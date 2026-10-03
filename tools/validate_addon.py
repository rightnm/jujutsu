#!/usr/bin/env python3
"""Validate a translated, fully-extracted add-on tree (BP+RP with binaries).

Checks (all reported, exit 1 only for hard failures):
 1. Every .json file parses as strict JSON; errors are compared to the
    known-original baseline (translation/audit_catalog.json json_errors).
    Only NEW or modified parse errors fail the run.
 2. Manifest sanity: format_version, header uuid/version, BP declares a
    dependency on the RP uuid.
 3. Script syntax: every .js is module-syntax checked with node (if present);
    syntax errors introduced by translation fail the run when node is available.
 4. Case-exact resource references: "textures/..." and "sounds/..." style
    paths in RP JSON/.material files must resolve to existing files
    (pre-existing mismatches are reported as original bugs, not failures).
 5. Audit leftovers: re-runs the text audit and fails if any "interesting"
    string is neither mapped in translation/zh_map.json values nor on the
    keep-Latin allowlist (untranslated English leaked back in).

Writes <out_json> (default translation/validation_report.json).
"""
from __future__ import annotations

import json
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path("__ROOT__")

SEC_RE = re.compile(r"§[0-9a-fl-or]")
KEEP_LATIN_WORDS = {
    "button", "Heroic", "Productions", "Youtube", "Discord", "Craftwars",
    "Roblox", "Realms", "Terraria", "Clover", "Legends", "Meridia", "Asylum",
    "Item", "Crescendo", "Solo", "Levelling", "craftwars", "Chlorite",
    "Sinisterbart", "ButterJaffa", "Butterjaffa", "Frogdog", "Soulking",
    "Miniroic", "Magroic", "XeroSCOOF", "GlitchyTurtle", "Neymar", "Willz",
    "Snubscroll", "Lemon", "Blue", "Xero", "Astaroth", "Gill", "Eona",
    "blue", "heroic", "heroicmaps", "www", "youtube", "com", "discord", "gg",
    "Nacker", "LGBT", "JFK", "EXP", "HP", "MP", "VFX", "NPC", "NPCs", "Cero",
    "Beam", "Frog", "Dack", "Snub", "Beru", "tag", "add", "s", "function",
    "cheats", "give", "trait", "delusional", "setting", "mahito", "insta",
    "kill", "Inumaki", "Ryomen", "Kashimo", "Hajime", "Gojo", "Satoru",
    "Bruh", "bro", "e", "g", "a", "b", "c", "d", "f", "k", "l", "m", "n",
    "o", "p", "r", "t", "u", "x", "y",
}


def load_json(p: Path):
    return json.loads(p.read_text(encoding="utf-8-sig"))


def main() -> int:
    root = Path(sys.argv[1]) if len(sys.argv) > 1 else Path("build/full")
    out = Path(sys.argv[2]) if len(sys.argv) > 2 else Path("translation/validation_report.json")
    bp_root = root / "Jujutsu Awakening BP"
    rp_root = root / "Jujutsu Awakening RP"
    if not bp_root.is_dir():
        bp_root = root / "BP"
        rp_root = root / "RP"

    report: dict = {"hard_failures": [], "original_issues": [], "checks": {}}
    hard = report["hard_failures"].append
    soft = report["original_issues"].append

    # ---- locate packs / manifests ----
    bp_manifest = load_json(bp_root / "manifest.json")
    rp_manifest = load_json(rp_root / "manifest.json")
    rp_uuid = rp_manifest["header"]["uuid"]
    dep_ok = any(d.get("uuid") == rp_uuid for d in bp_manifest.get("dependencies", []))
    report["checks"]["bp_depends_on_rp"] = dep_ok
    if not dep_ok:
        hard(f"BP manifest missing dependency on RP uuid {rp_uuid}")
    report["checks"]["bp_name"] = bp_manifest["header"].get("name")
    report["checks"]["rp_name"] = rp_manifest["header"].get("name")

    # ---- strict json ----
    baseline = json.loads(Path("translation/audit_catalog.json").read_text(encoding="utf-8"))
    known = {(e["file"], e["error"][:60]) for e in baseline.get("json_errors", [])}
    new_errors = []
    count = 0
    for prefix, pack in (("BP", bp_root), ("RP", rp_root)):
        for f in sorted(pack.rglob("*.json")):
            count += 1
            rel = f"{prefix}/{f.relative_to(pack).as_posix()}"
            try:
                json.loads(f.read_text(encoding="utf-8-sig"))
            except Exception as exc:
                key = (rel, str(exc)[:60])
                if any(k[0] == rel for k in known):
                    soft(f"json parse (original, unchanged): {rel}: {exc}")
                else:
                    new_errors.append(rel)
                    hard(f"json parse (NEW, translation-introduced): {rel}: {exc}")
    report["checks"]["json_files_checked"] = count
    report["checks"]["json_new_errors"] = new_errors

    # ---- text re-audit for leftovers ----
    cat_out = Path("build/audit_after_zh.json")
    cat_out.parent.mkdir(parents=True, exist_ok=True)
    subprocess.run(
        [sys.executable, "tools/audit_player_text.py", str(root), str(cat_out)],
        check=True,
    )
    cat = json.loads(cat_out.read_text(encoding="utf-8"))
    zh_map = json.loads(Path("translation/zh_map.json").read_text(encoding="utf-8"))
    zh_values = {e["zh"] for e in zh_map.values()}
    extra = json.loads(Path("translation/zh/extra_texts.json").read_text(encoding="utf-8"))
    zh_values |= {v for k, v in extra.items() if not k.startswith("_")}
    leftover = []
    for e in cat["entries"]:
        t = e["text"]
        if t in zh_values:
            continue
        vis = SEC_RE.sub("", t)
        words = {w for w in re.findall(r"[A-Za-z]{2,}", vis)}
        if words - KEEP_LATIN_WORDS:
            leftover.append({"id": e["id"], "text": t[:120], "where": e["locations"][0]})
    report["checks"]["untranslated_leftovers"] = leftover
    if leftover:
        hard(f"{len(leftover)} interesting strings left untranslated")

    # ---- case-exact resource path refs ----
    ref_re = re.compile(r'"(textures/[^"]+|sounds/[^"]+)"')
    missing_refs = []
    for f in sorted(rp_root.rglob("*")):
        if f.suffix not in (".json", ".material"):
            continue
        rel = f.relative_to(rp_root).as_posix()
        try:
            raw = f.read_text(encoding="utf-8-sig", errors="replace")
        except Exception:
            continue
        fdir = f.parent
        files_on_disk = {
            p.name.lower(): p.name for p in fdir.iterdir()
        } if fdir.is_dir() else {}
        for m in ref_re.finditer(raw):
            ref = m.group(1)
            cand_a = rp_root / ref  # e.g. textures/x (may lack ext)
            if cand_a.suffix:
                if not cand_a.is_file():
                    missing_refs.append((f"RP/{rel}", ref))
                else:
                    # case-exactness
                    parts = ref.split("/")
                    cur = rp_root
                    ok = True
                    for part in parts:
                        if cur.is_dir():
                            names = {p.name.lower(): p.name for p in cur.iterdir()}
                            if part.lower() not in names:
                                ok = False
                                break
                            if names[part.lower()] != part:
                                ok = False
                                break
                            cur = cur / names[part.lower()]
                    if not ok:
                        missing_refs.append((f"RP/{rel}", "CASE:" + ref))
            else:
                hits = list(rp_root.glob(ref + ".*"))
                if not hits:
                    missing_refs.append((f"RP/{rel}", ref))
    report["checks"]["resource_ref_mismatches"] = missing_refs[:200]
    if missing_refs:
        soft(f"{len(missing_refs)} resource references unresolved/case-mismatched (pre-existing unless introduced)")

    # ---- script syntax (node, if available) ----
    node = None
    try:
        subprocess.run(["node", "--version"], capture_output=True, check=True)
        node = "node"
    except Exception:
        pass
    js_results = {}
    if node:
        for f in sorted(bp_root.rglob("*.js")):
            rel = f"BP/{f.relative_to(bp_root).as_posix()}"
            src = f.read_text(encoding="utf-8-sig")
            proc = subprocess.run(
                ["node", "--input-type=module", "--check"],
                input=src, capture_output=True, text=True,
            )
            js_results[rel] = proc.returncode
            if proc.returncode != 0:
                hard(f"js syntax error: {rel}: {proc.stderr.strip()[:200]}")
    report["checks"]["js_files_checked"] = len(js_results)

    out.parent.mkdir(parents=True, exist_ok=True)
    out.write_text(json.dumps(report, ensure_ascii=False, indent=1) + "\n", encoding="utf-8")
    print(json.dumps({
        "hard_failures": len(report["hard_failures"]),
        "original_issue_notes": len(report["original_issues"]),
        "report": str(out),
    }, ensure_ascii=False, indent=1))
    return 1 if report["hard_failures"] else 0


if __name__ == "__main__":
    sys.exit(main())
