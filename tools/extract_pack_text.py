#!/usr/bin/env python3
"""Extract every TEXTual file of a combined .mcaddon into a plain tree.

The combined .mcaddon is a ZIP containing one behavior pack and one resource
pack. This tool

* locates each pack root via its manifest.json,
* verifies strict JSON parseability of manifest.json files,
* copies every text file (json / lang / js / txt / md / material / fragment)
  into <output>/<BP|RP>/<pack-relative path>,
* writes <output>/inventory.json with the manifests, the full file list
  (path, size, sha256) and the list of skipped binary files,
* fails loudly on invalid ZIP members or unparseable manifests.

It is safe to commit the result: no binary asset is copied.
"""

from __future__ import annotations

import hashlib
import json
import sys
import zipfile
from pathlib import Path

TEXT_SUFFIXES = {
    ".json",
    ".lang",
    ".js",
    ".ts",
    ".txt",
    ".md",
    ".material",
    ".fragment",
    ".vertex",
    ".fsh",
    ".vsh",
    ".cfg",
    ".mcmeta",
}


def safe_members(zf: zipfile.ZipFile) -> list[zipfile.ZipInfo]:
    members = []
    for m in zf.infolist():
        name = m.filename.replace("\\", "/")
        parts = Path(name).parts
        if m.is_dir():
            continue
        if any(part in ("..", "") for part in parts) or name.startswith("/"):
            raise RuntimeError(f"Unsafe zip member: {m.filename!r}")
        members.append(m)
    return members


def find_pack_roots(names: list[str]) -> dict[str, Path]:
    roots: dict[str, Path] = {}
    for name in names:
        if not name.endswith("manifest.json"):
            continue
        root = Path(name).parent
        # Data has priority: a pack dir must contain a manifest directly.
        roots.setdefault(str(root), root)
    return roots


def classify(manifest: dict) -> str | None:
    types = {mod.get("type") for mod in manifest.get("modules", [])}
    if "resources" in types:
        return "RP"
    if "data" in types or "script" in types:
        return "BP"
    return None


def main() -> None:
    if len(sys.argv) != 3:
        print("usage: extract_pack_text.py <combined.mcaddon> <output-dir>", file=sys.stderr)
        raise SystemExit(2)
    src = Path(sys.argv[1])
    out = Path(sys.argv[2])
    if not src.is_file() or not zipfile.is_zipfile(src):
        raise SystemExit(f"Not a readable zip: {src}")

    with zipfile.ZipFile(src) as zf:
        bad = zf.testzip()
        if bad:
            raise SystemExit(f"Corrupt zip member: {bad}")
        members = safe_members(zf)
        names = [m.filename.replace("\\", "/") for m in members]

        # Parse manifests, classify packs.
        packs: dict[str, dict] = {}
        contents: dict[str, bytes] = {}
        for m in members:
            name = m.filename.replace("\\", "/")
            data = zf.read(m)
            contents[name] = data
            if name.endswith("manifest.json"):
                try:
                    manifest = json.loads(data.decode("utf-8-sig"))
                except Exception as exc:  # noqa: BLE001 - must report any issue
                    raise SystemExit(f"manifest.json not strict JSON: {name}: {exc}") from exc
                kind = classify(manifest)
                if kind in ("BP", "RP"):
                    if kind in packs:
                        raise SystemExit(f"Duplicate {kind} manifest at {name}")
                    packs[kind] = {"path": str(Path(name).parent), "manifest": manifest}
        for kind in ("BP", "RP"):
            if kind not in packs:
                raise SystemExit(f"No {kind} found in {src}")

        inventory = {
            "source": src.name,
            "packs": {},
            "counts": {"text": 0, "binary": 0},
        }
        for kind, info in packs.items():
            root = info["path"]
            prefix = root + "/" if root not in (".", "") else ""
            entries = []
            text_files = []
            binary_files = []
            for name, data in sorted(contents.items()):
                if not name.startswith(prefix):
                    continue
                rel = name[len(prefix):]
                digest = hashlib.sha256(data).hexdigest()
                entries.append({"path": rel, "size": len(data), "sha256": digest})
                if Path(name).suffix.lower() in TEXT_SUFFIXES:
                    text_files.append(rel)
                    target = out / kind / rel
                    target.parent.mkdir(parents=True, exist_ok=True)
                    target.write_bytes(data)
                else:
                    binary_files.append(rel)
            inventory["packs"][kind] = {
                "root": root,
                "manifest": info["manifest"],
                "files": entries,
                "text_files": text_files,
                "binary_files": binary_files,
            }
            inventory["counts"]["text"] += len(text_files)
            inventory["counts"]["binary"] += len(binary_files)

        out.mkdir(parents=True, exist_ok=True)
        (out / "inventory.json").write_text(
            json.dumps(inventory, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
        )
        for kind in ("BP", "RP"):
            info = inventory["packs"][kind]
            print(
                f"{kind}: root={info['root']} files={len(info['files'])} "
                f"text={len(info['text_files'])} binary={len(info['binary_files'])}"
            )


if __name__ == "__main__":
    main()
