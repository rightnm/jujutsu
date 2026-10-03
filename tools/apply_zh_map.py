#!/usr/bin/env python3
"""Apply translation/zh_map.json to an extracted (full) add-on tree.

Mirrors tools/audit_player_text.py: for every text kind the audit extracts
(display_name JSON values, mcfunction rawtext/title/say, nested tellraw in
BP JSON commands, script .title/.body/.button/sendMessage, RP lang values,
RP ui text fields), each decoded string is looked up in the zh map and the
encoded Chinese replacement is written back in place. Identifiers, commands,
tags and any string not present in the map are left untouched.

Usage:
    python3 tools/apply_zh_map.py <tree_root> [--report <path>]

<tree_root> must contain exactly one BP pack dir and one RP pack dir (roots
discovered via their manifest.json files, any directory name accepted).
Writes <report> (default translation/apply_report.json) with per-kind counts
of applied and not-in-map strings.
"""
from __future__ import annotations

import json
import re
import sys
from pathlib import Path

TEXT_KEY = re.compile(r'("text"\s*:\s*")((?:[^"\\\r\n]|\\.)*)(")')
TITLE_FREE = re.compile(
    r'\brun title\s+\S+(?:\[[^\]]*\])?\s+(?:title|subtitle|actionbar)\s+(\S.*?)?\s*$'
)
SAY_FREE = re.compile(r'\brun (say|me)\s+(.*?)\s*$|^(\s*(?:say|me)\s+(.*?))\s*$')
FORM_CALL = re.compile(
    r'(\.(?:title|body|button)\s*\(\s*")((?:[^"\\\r\n]|\\.)*)(")'
    r'|(sendMessage\(\s*")((?:[^"\\\r\n]|\\.)*)(")'
)
ESCAPED_TEXT_KEY = re.compile(r'(\\"text\\"\s*:\s*\\")((?:[^\\\r\n]|\\.)*?)(\\")')
LANG_LINE = re.compile(r'^([^#=\s][^=]*)=(.*)$')
MANIFEST_DESC_KEYS = {"name", "description"}


def js_decode(s: str) -> str:
    try:
        return json.loads('"' + s + '"')
    except Exception:
        return s


def js_escape(s: str, ascii_only: bool) -> str:
    return json.dumps(s, ensure_ascii=ascii_only)[1:-1]


def find_packs(root: Path) -> dict[str, Path]:
    packs: dict[str, Path] = {}
    for mp in root.rglob("manifest.json"):
        try:
            mani = json.loads(mp.read_text(encoding="utf-8-sig"))
        except Exception:
            continue
        types = {m.get("type") for m in mani.get("modules", [])}
        if "resources" in types:
            packs["RP"] = mp.parent
        if "data" in types or "script" in types:
            packs["BP"] = mp.parent
    if set(packs) != {"BP", "RP"}:
        raise SystemExit(f"could not locate both packs under {root}: found {sorted(packs)}")
    return packs


class Applier:
    def __init__(self, mapping: dict[str, str]) -> None:
        self.map = mapping
        self.stats: dict[str, dict[str, int]] = {}
        self.missing: dict[str, list[str]] = {}

    def hit(self, kind: str, rel: str) -> None:
        self.stats.setdefault(kind, {})["applied"] = self.stats.get(kind, {}).get("applied", 0) + 1

    def miss(self, kind: str, rel: str, text: str) -> None:
        st = self.stats.setdefault(kind, {})
        st["not_in_map"] = st.get("not_in_map", 0) + 1
        self.missing.setdefault(kind, [])
        if len(self.missing[kind]) < 200:
            self.missing[kind].append(f"{rel}: {text[:120]!r}")

    def lookup(self, text: str):
        return self.map.get(text)

    def rewrite_display_names(self, path: Path, rel: str) -> None:
        raw = path.read_text(encoding="utf-8-sig")
        try:
            data = json.loads(raw)
        except Exception:
            return
        replacements: list[tuple[str, str]] = []

        def walk(o):
            if isinstance(o, dict):
                for k, v in o.items():
                    if k == "minecraft:display_name" and isinstance(v, dict) and isinstance(v.get("value"), str):
                        zh = self.lookup(v["value"])
                        if zh is not None:
                            replacements.append((v["value"], zh))
                        else:
                            self.miss("display_name", rel, v["value"])
                    else:
                        walk(v)
            elif isinstance(o, list):
                for x in o:
                    walk(x)

        walk(data)
        if not replacements:
            return
        out = raw
        for en, zh in replacements:
            enc_ascii = js_escape(en, True)
            enc_nat = js_escape(en, False)
            zh_enc = js_escape(zh, False)
            if f'"{enc_nat}"' in out:
                out = out.replace(f'"{enc_nat}"', f'"{zh_enc}"')
            elif f'"{enc_ascii}"' in out:
                out = out.replace(f'"{enc_ascii}"', f'"{zh_enc}"')
            else:
                # value present via parse but not textually (edge): full dump
                out = json.dumps(json.loads(raw), ensure_ascii=False, indent=2) + "\n"
                break
        path.write_text(out, encoding="utf-8")
        self.hit("display_name", rel)

    def rewrite_rp_ui(self, path: Path, rel: str) -> None:
        raw = path.read_text(encoding="utf-8-sig")
        try:
            data = json.loads(raw)
        except Exception:
            return
        ui_keys = ("text", "title", "header", "footer", "label")
        replacements: list[tuple[str, str]] = []

        def walk(o):
            if isinstance(o, dict):
                for k, v in o.items():
                    if k in ui_keys and isinstance(v, str) and "$" not in k and not v.startswith("$"):
                        zh = self.lookup(v)
                        if zh is not None:
                            replacements.append((v, zh))
                    else:
                        walk(v)
            elif isinstance(o, list):
                for x in o:
                    walk(x)

        walk(data)
        if not replacements:
            return
        out = raw
        for en, zh in replacements:
            enc_nat = js_escape(en, False)
            enc_ascii = js_escape(en, True)
            zh_enc = js_escape(zh, False)
            if f'"{enc_nat}"' in out:
                out = out.replace(f'"{enc_nat}"', f'"{zh_enc}"')
            elif f'"{enc_ascii}"' in out:
                out = out.replace(f'"{enc_ascii}"', f'"{zh_enc}"')
        path.write_text(out, encoding="utf-8")
        self.hit("rp_ui", rel)

    def rewrite_mcfunction(self, path: Path, rel: str) -> None:
        lines = path.read_text(encoding="utf-8-sig", errors="replace").splitlines(keepends=True)
        changed = False
        new_lines: list[str] = []
        for line in lines:
            if line.lstrip().startswith("#"):
                new_lines.append(line)
                continue

            def sub_text_key(m: re.Match) -> str:
                nonlocal changed
                dec = js_decode(m.group(2))
                zh = self.lookup(dec)
                if zh is None:
                    self.miss("rawtext", rel, dec)
                    return m.group(0)
                changed = True
                return m.group(1) + js_escape(zh, False) + m.group(3)

            new = TEXT_KEY.sub(sub_text_key, line)

            m = TITLE_FREE.search(new.rstrip("\r\n"))
            if m and m.group(1) and not m.group(1).startswith("{"):
                en = m.group(1)
                zh = self.lookup(en)
                if zh is not None:
                    changed = True
                    new = new[: m.start(1)] + zh + new[m.end(1):]
                else:
                    self.miss("title_freetext", rel, en)

            m = SAY_FREE.search(new)
            if m:
                en = m.group(2) if m.group(1) else m.group(4)
                if en:
                    zh = self.lookup(en)
                    if zh is not None:
                        changed = True
                        s, e = (m.start(2), m.end(2)) if m.group(1) else (m.start(4), m.end(4))
                        new = new[:s] + zh + new[e:]
                    else:
                        self.miss("say", rel, en)

            new_lines.append(new)

        if changed:
            path.write_text("".join(new_lines), encoding="utf-8")
            self.hit("mcfunction", rel)

    def rewrite_nested_tellraw(self, path: Path, rel: str) -> None:
        raw = path.read_text(encoding="utf-8-sig", errors="replace")
        if "tellraw" not in raw and "titleraw" not in raw and "actionbar" not in raw:
            return
        changed = False

        def sub(m: re.Match) -> str:
            nonlocal changed
            dec = js_decode(m.group(2))
            zh = self.lookup(dec)
            if zh is None:
                self.miss("nested_tellraw", rel, dec)
                return m.group(0)
            changed = True
            return m.group(1) + js_escape(zh, False) + m.group(3)

        out = ESCAPED_TEXT_KEY.sub(sub, raw)
        if changed:
            path.write_text(out, encoding="utf-8")
            self.hit("nested_tellraw", rel)

    def rewrite_script(self, path: Path, rel: str) -> None:
        raw = path.read_text(encoding="utf-8-sig", errors="replace")
        changed = False

        def sub(m: re.Match) -> str:
            nonlocal changed
            if m.group(2) is not None:
                dec = js_decode(m.group(2))
                zh = self.lookup(dec)
                if zh is None:
                    self.miss("script_ui", rel, dec)
                    return m.group(0)
                changed = True
                return m.group(1) + js_escape(zh, False) + m.group(3)
            dec = js_decode(m.group(5))
            zh = self.lookup(dec)
            if zh is None:
                self.miss("script_ui", rel, dec)
                return m.group(0)
            changed = True
            return m.group(4) + js_escape(zh, False) + m.group(6)

        out = FORM_CALL.sub(sub, raw)
        if changed:
            path.write_text(out, encoding="utf-8")
            self.hit("script_ui", rel)

    def rewrite_lang(self, path: Path, rel: str) -> None:
        lines = path.read_text(encoding="utf-8-sig", errors="replace").splitlines(keepends=True)
        changed = False
        out_lines: list[str] = []
        for line in lines:
            body = line.rstrip("\r\n")
            tail = line[len(body):]
            m = LANG_LINE.match(body)
            if m:
                en = m.group(2)
                zh = self.lookup(en)
                if zh is not None:
                    changed = True
                    out_lines.append(f"{m.group(1).strip()}={zh}{tail}")
                    continue
                if en.strip():
                    self.miss("lang", rel, en)
            out_lines.append(line)
        if changed:
            path.write_text("".join(out_lines), encoding="utf-8")
            self.hit("lang", rel)

    def rewrite_manifest(self, path: Path, rel: str) -> None:
        raw = path.read_text(encoding="utf-8-sig")
        try:
            data = json.loads(raw)
        except Exception:
            return
        changed = False
        header = data.get("header", {})
        for key in ("name", "description"):
            en = header.get(key)
            if isinstance(en, str):
                zh = self.lookup(en)
                if zh is None:
                    self.miss("manifest", rel, en)
                    continue
                header[key] = zh
                changed = True
        if changed:
            out = json.dumps(data, ensure_ascii=False, indent=4) + "\n"
            path.write_text(out, encoding="utf-8")
            self.hit("manifest", rel)


def main() -> int:
    args = sys.argv[1:]
    if not args:
        print(__doc__)
        return 2
    root = Path(args[0])
    report_path = Path("translation/apply_report.json")
    if "--report" in args:
        i = args.index("--report")
        report_path = Path(args[i + 1])

    zh_map = json.loads(Path("translation/zh_map.json").read_text(encoding="utf-8"))
    mapping: dict[str, str] = {}
    extra_path = Path("translation/zh/extra_texts.json")
    if extra_path.is_file():
        for k_, v_ in json.loads(extra_path.read_text(encoding="utf-8")).items():
            if not k_.startswith("_"):
                mapping[k_] = v_
    for e in zh_map.values():
        en, zh = e["en"], e["zh"]
        if en in mapping and mapping[en] != zh:
            raise SystemExit(f"conflicting zh for {en!r}")
        mapping[en] = zh

    packs = find_packs(root)
    ap = Applier(mapping)

    bp = packs["BP"]
    for sub in ("items", "blocks"):
        d = bp / sub
        if d.is_dir():
            for f in sorted(d.rglob("*.json")):
                ap.rewrite_display_names(f, f"BP/{f.relative_to(bp).as_posix()}")
    fn_dir = bp / "functions"
    if fn_dir.is_dir():
        for f in sorted(fn_dir.rglob("*.mcfunction")):
            ap.rewrite_mcfunction(f, f"BP/{f.relative_to(bp).as_posix()}")
    for f in sorted(bp.rglob("*.json")):
        ap.rewrite_nested_tellraw(f, f"BP/{f.relative_to(bp).as_posix()}")
    for f in sorted(bp.rglob("*.js")):
        ap.rewrite_script(f, f"BP/{f.relative_to(bp).as_posix()}")

    rp = packs["RP"]
    texts = rp / "texts"
    if texts.is_dir():
        for f in sorted(texts.rglob("*.lang")):
            ap.rewrite_lang(f, f"RP/{f.relative_to(rp).as_posix()}")
    ui = rp / "ui"
    if ui.is_dir():
        for f in sorted(ui.rglob("*.json")):
            ap.rewrite_rp_ui(f, f"RP/{f.relative_to(rp).as_posix()}")

    ap.rewrite_manifest(bp / "manifest.json", "BP/manifest.json")
    ap.rewrite_manifest(rp / "manifest.json", "RP/manifest.json")

    report = {
        "packs": {k: str(v) for k, v in packs.items()},
        "stats": ap.stats,
        "not_in_map_samples": ap.missing,
    }
    report_path.parent.mkdir(parents=True, exist_ok=True)
    report_path.write_text(json.dumps(report, ensure_ascii=False, indent=1) + "\n", encoding="utf-8")
    applied = sum(v.get("applied", 0) for v in ap.stats.values())
    missed = sum(v.get("not_in_map", 0) for v in ap.stats.values())
    print(f"applied {applied} files' worth of replacements; {missed} strings not in map -> {report_path}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
