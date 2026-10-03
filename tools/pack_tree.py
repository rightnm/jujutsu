#!/usr/bin/env python3
"""Pack an extracted add-on tree (BP+RP dirs) into one importable .mcaddon.

Usage: python3 tools/pack_tree.py <tree_root> <output.mcaddon>

Rejects unsafe member names; stores files with forward-slash paths.
"""
from __future__ import annotations

import sys
import zipfile
from pathlib import Path


def main() -> int:
    root = Path(sys.argv[1])
    out = Path(sys.argv[2])
    files = [p for p in sorted(root.rglob("*")) if p.is_file()]
    if not files:
        raise SystemExit(f"no files under {root}")
    out.parent.mkdir(parents=True, exist_ok=True)
    with zipfile.ZipFile(out, "w", compression=zipfile.ZIP_DEFLATED, compresslevel=6) as zf:
        for p in files:
            arc = p.relative_to(root).as_posix()
            if arc.startswith("/") or ".." in Path(arc).parts:
                raise SystemExit(f"unsafe member {arc!r}")
            zf.write(p, arc)
    # verify zip integrity
    with zipfile.ZipFile(out) as zf:
        bad = zf.testzip()
        if bad:
            raise SystemExit(f"corrupt member after pack: {bad}")
        names = zf.namelist()
        assert any(n.endswith("manifest.json") for n in names), "no manifest in archive"
    print(f"packed {len(files)} files -> {out} ({out.stat().st_size} bytes)")
    return 0


if __name__ == "__main__":
    sys.exit(main())
