#!/usr/bin/env python3
"""Audit player-visible text inside an extracted Bedrock add-on tree.

Scans the packs produced by tools/extract_pack_text.py and emits a JSON
catalog of every unique player-visible string:

* BP items/blocks: minecraft:display_name
* BP functions: rawtext "text" values, `title/ subtitle/ actionbar` free
  text, `say` messages, `tell`/`msg`
* BP JSON files (entities/items/blocks/...): tellraw-style text embedded in
  command strings (one JSON escaping level)
* BP scripts: ActionFormData .title/.body/.button and sendMessage literals
* RP texts/*.lang: every key=value pair
* RP ui/*.json: "text" fields

Non-visible candidates (pure glyph frames, whitespace, identifiers) are
listed under "skipped" so nothing is silently dropped; files that fail JSON
parsing are recorded under "json_errors" for the bug report.

Output: audit_catalog.json
"""

from __future__ import annotations

import json
import re
import sys
import unicodedata
from collections import OrderedDict
from pathlib import Path

TEXT_KEY = re.compile(r'"text"\s*:\s*"((?:[^"\\\r\n]|\\.)*)"')
TITLE_FREE = re.compile(
    r'\brun title\s+\S+(?:\[[^\]]*\])?\s+(?:title|subtitle|actionbar)\s+(\S.*?)?\s*$'
)
SAY_FREE = re.compile(r'\brun (?:say|me)\s+(.*?)\s*$|^\s*(?:say|me)\s+(.*?)\s*$')
FORM_CALL = re.compile(
    r'\.(?:title|body|button)\s*\(\s*"((?:[^"\\\r\n]|\\.)*)"'
    r'|sendMessage\(\s*"((?:[^"\\\r\n]|\\.)*)"'
)
ESCAPED_TEXT_KEY = re.compile(
    r'\\"text\\"\s*:\s*\\"((?:[^\\\r\n]|\\.)*?)\\"'
)
LANG_LINE = re.compile(r'^([^#=\s][^=]*)=(.*)$')

RP_UI_TEXT = ("text", "title", "header", "footer", "label")


def js_decode(s: str) -> str:
    """Decode a JSON-escaped string body back to raw text."""
    try:
        return json.loads('"' + s + '"')
    except Exception:
        return s


def interesting(text: str) -> bool:
    """Decide if a raw string looks like player-visible natural language."""
    body = []
    for ch in text:
        code = ord(ch)
        if ch in "\n\r\t ":
            continue
        if ch == "§":  # format codes look like §a, dropped together below
            continue
        cat = unicodedata.category(ch)
        if cat.startswith("P") or cat.startswith("S"):
            continue
        if 0xE000 <= code <= 0xF8FF or code >= 0xF0000:  # PUA glyph frames
            continue
        body.append(ch)
    meat = "".join(body)
    # strip formatting §X pairs first
    stripped = re.sub(r'§.', '', meat)
    if len(stripped) == 0:
        return False
    letters = [c for c in stripped if c.isalpha() and c.isascii()]
    return len(letters) >= 2


class Catalog:
    def __init__(self) -> None:
        self.entries: OrderedDict[str, dict] = OrderedDict()
        self.skipped: OrderedDict[str, list[str]] = OrderedDict()
        self.json_errors: list[dict] = []

    def add(self, text: str, kind: str, relpath: str) -> None:
        key = json.dumps(text, ensure_ascii=False)
        if key in self.entries:
            e = self.entries[key]
            locs = e["locations"]
            if kind not in [loc["kind"] for loc in locs if loc["file"] == relpath]:
                locs.append({"file": relpath, "kind": kind})
            e["count"] += 1
            return
        if interesting(text):
            self.entries[key] = {
                "text": text,
                "count": 1,
                "locations": [{"file": relpath, "kind": kind}],
            }
        else:
            self.skipped.setdefault(key, []).append(f"{relpath} [{kind}]")

    def add_skipped(self, text: str, kind: str, relpath: str) -> None:
        key = json.dumps(text, ensure_ascii=False)
        self.skipped.setdefault(key, []).append(f"{relpath} [{kind}]")


def scan_display_names(cat: Catalog, pack: Path, prefix: str) -> int:
    n = 0
    for sub in ("items", "blocks"):
        for f in sorted((pack / sub).rglob("*.json")) if (pack / sub).is_dir() else []:
            rel = f"{prefix}/{f.relative_to(pack).as_posix()}"
            try:
                data = json.loads(f.read_text(encoding="utf-8-sig"))
            except Exception as exc:
                cat.json_errors.append({"file": rel, "error": str(exc)})
                continue

            def walk(o: object) -> None:
                nonlocal n
                if isinstance(o, dict):
                    for k, v in o.items():
                        if k == "minecraft:display_name" and isinstance(v, dict) and isinstance(v.get("value"), str):
                            cat.add(v["value"], "display_name", rel)
                            n += 1
                        else:
                            walk(v)
                elif isinstance(o, list):
                    for x in o:
                        walk(x)

            walk(data)
    return n


def scan_function(cat: Catalog, f: Path, prefix: str, pack: Path) -> None:
    rel = f"{prefix}/{f.relative_to(pack).as_posix()}"
    for line in f.read_text(encoding="utf-8-sig", errors="replace").splitlines():
        if line.lstrip().startswith("#"):
            continue
        for m in TEXT_KEY.finditer(line):
            cat.add(js_decode(m.group(1)), "rawtext", rel)
        m = TITLE_FREE.search(line)
        if m and m.group(1) and not m.group(1).startswith("{"):
            cat.add(m.group(1), "title_freetext", rel)
        m = SAY_FREE.search(line)
        if m:
            text = m.group(1) or m.group(2)
            if text:
                cat.add(text, "say", rel)


def scan_json_commands(cat: Catalog, f: Path, prefix: str, pack: Path) -> None:
    """tellraw text embedded one JSON level deep inside command JSON strings."""
    raw = f.read_text(encoding="utf-8-sig", errors="replace")
    if "tellraw" not in raw and "titleraw" not in raw and "actionbar" not in raw:
        return
    rel = f"{prefix}/{f.relative_to(pack).as_posix()}"
    for m in ESCAPED_TEXT_KEY.finditer(raw):
        # one JSON escape level: \\" was consumed; decode remaining escapes
        cat.add(js_decode(m.group(1)), "nested_tellraw", rel)


def scan_scripts(cat: Catalog, pack: Path, prefix: str) -> None:
    for f in sorted(pack.rglob("*.js")):
        rel = f"{prefix}/{f.relative_to(pack).as_posix()}"
        src = f.read_text(encoding="utf-8-sig", errors="replace")
        for m in FORM_CALL.finditer(src):
            text = m.group(1) or m.group(2) or ""
            if text:
                cat.add(js_decode(text), "script_ui", rel)


def scan_lang(cat: Catalog, f: Path, rel: str) -> int:
    n = 0
    for line in f.read_text(encoding="utf-8-sig", errors="replace").splitlines():
        m = LANG_LINE.match(line)
        if not m:
            if line.strip() and not line.lstrip().startswith("##"):
                cat.add_skipped(line.strip(), "lang_nonstandard", rel)
            continue
        key, value = m.group(1).strip(), m.group(2)
        n += 1
        kkey = f"lang:{key}"
        if kkey in cat.entries:
            cat.entries[kkey]["count"] += 1
        else:
            cat.entries[kkey] = {
                "text": value,
                "lang_key": key,
                "count": 1,
                "locations": [{"file": rel, "kind": "lang"}],
            }
    return n


def scan_rp_ui(cat: Catalog, pack: Path, prefix: str) -> None:
    ui = pack / "ui"
    if not ui.is_dir():
        return
    for f in sorted(ui.rglob("*.json")):
        rel = f"{prefix}/{f.relative_to(pack).as_posix()}"
        try:
            data = json.loads(f.read_text(encoding="utf-8-sig"))
        except Exception as exc:
            cat.json_errors.append({"file": rel, "error": str(exc)})
            continue

        def walk(o: object, key_path: str) -> None:
            if isinstance(o, dict):
                for k, v in o.items():
                    if k in RP_UI_TEXT and isinstance(v, str) and "$" not in k:
                        # vanilla UI json often binds variables; only literal English counts
                        if not v.startswith("$"):
                            if interesting(v):
                                cat.add(v, f"rp_ui:{key_path}", rel)
                    else:
                        walk(v, f"{key_path}.{k}" if key_path else k)
            elif isinstance(o, list):
                for i, x in enumerate(o):
                    walk(x, key_path)

        walk(data, "")


def validate_all_json(cat: Catalog, root: Path, prefix: str) -> int:
    n = 0
    pack = root / prefix
    for f in sorted(pack.rglob("*.json")):
        rel = f"{prefix}/{f.relative_to(pack).as_posix()}"
        n += 1
        try:
            json.loads(f.read_text(encoding="utf-8-sig"))
        except Exception as exc:
            cat.json_errors.append({"file": rel, "error": str(exc)})
    return n


def main() -> None:
    src = Path(sys.argv[1]) if len(sys.argv) > 1 else Path("extracted_src")
    out = Path(sys.argv[2]) if len(sys.argv) > 2 else Path("audit_catalog.json")
    cat = Catalog()
    bp, rp = src / "BP", src / "RP"
    if not (bp.is_dir() and rp.is_dir()):
        # fall back to manifest-based pack discovery (any directory names)
        found = {}
        for mp in src.rglob("manifest.json"):
            try:
                mani = json.loads(mp.read_text(encoding="utf-8-sig"))
            except Exception:
                continue
            types = {m.get("type") for m in mani.get("modules", [])}
            if "resources" in types:
                found["RP"] = mp.parent
            if "data" in types or "script" in types:
                found["BP"] = mp.parent
        bp, rp = found.get("BP", bp), found.get("RP", rp)

    stats = {}
    stats["display_names"] = scan_display_names(cat, bp, "BP")
    stats["json_checked"] = 0
    for prefix, pack_dir in (("BP", bp), ("RP", rp)):
        for f in sorted(pack_dir.rglob("*.json")) if pack_dir.is_dir() else []:
            rel = f"{prefix}/{f.relative_to(pack_dir).as_posix()}"
            stats["json_checked"] += 1
            try:
                json.loads(f.read_text(encoding="utf-8-sig"))
            except Exception as exc:
                cat.json_errors.append({"file": rel, "error": str(exc)})
    for f in sorted((bp / "functions").rglob("*.mcfunction")) if (bp / "functions").is_dir() else []:
        scan_function(cat, f, "BP", bp)
    for f in sorted(bp.rglob("*.json")):
        scan_json_commands(cat, f, "BP", bp)
    scan_scripts(cat, bp, "BP")
    lang_files = sorted(rp.rglob("*.lang"))
    for f in lang_files:
        stats.setdefault("lang_keys", 0)
        stats["lang_keys"] += scan_lang(cat, f, f"RP/{f.relative_to(rp).as_posix()}")
    scan_rp_ui(cat, rp, "RP")

    # de-duplicate json errors
    seen = set()
    uniq = []
    for e in cat.json_errors:
        k = (e["file"], e["error"][:80])
        if k not in seen:
            seen.add(k)
            uniq.append(e)

    result = {
        "stats": stats,
        "entry_count": len(cat.entries),
        "entries": [
            {"id": i, **{k: v for k, v in e.items()}}
            for i, e in enumerate(
                sorted(cat.entries.values(), key=lambda e: e["locations"][0]["file"])
            )
        ],
        "skipped": {k: v for k, v in cat.skipped.items()},
        "json_errors": uniq,
    }
    out.write_text(json.dumps(result, ensure_ascii=False, indent=1) + "\n", encoding="utf-8")
    print(json.dumps({**stats, "entries": len(cat.entries), "json_errors": len(uniq)}, indent=1))


if __name__ == "__main__":
    main()
