#!/usr/bin/env python3
"""Combine one Bedrock behavior-pack archive and one resource-pack archive.

The input .mcaddon/.mcpack files are ZIP archives. The script discovers the
actual pack roots by manifest.json, adds the resource-pack dependency to the
behavior pack, and creates one importable .mcaddon containing both packs.
"""

from __future__ import annotations

import argparse
import json
import re
import shutil
import tempfile
import zipfile
from pathlib import Path


def safe_extract(archive: Path, destination: Path) -> None:
    with zipfile.ZipFile(archive) as source:
        root = destination.resolve()
        for member in source.infolist():
            target = (destination / member.filename).resolve()
            if root not in target.parents and target != root:
                raise ValueError(f"Unsafe path in {archive}: {member.filename}")
        source.extractall(destination)


def read_manifest(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8-sig"))


def pack_kind(manifest: dict) -> str | None:
    types = {module.get("type") for module in manifest.get("modules", [])}
    if "resources" in types:
        return "resource"
    if "data" in types or "script" in types:
        return "behavior"
    return None


def find_pack(extracted: Path, expected_kind: str) -> tuple[Path, dict]:
    matches: list[tuple[Path, dict]] = []
    for manifest_path in extracted.rglob("manifest.json"):
        try:
            manifest = read_manifest(manifest_path)
        except (OSError, UnicodeError, json.JSONDecodeError):
            continue
        if pack_kind(manifest) == expected_kind:
            matches.append((manifest_path.parent, manifest))
    if len(matches) != 1:
        found = ", ".join(str(path) for path, _ in matches) or "none"
        raise RuntimeError(
            f"Expected exactly one {expected_kind} pack in {extracted}; found: {found}"
        )
    return matches[0]


def version(manifest: dict) -> list[int]:
    value = manifest.get("header", {}).get("version", [1, 0, 0])
    if not isinstance(value, list) or len(value) != 3:
        raise ValueError("Pack manifest header.version must be a three-number array")
    return value


def add_resource_dependency(behavior_manifest: dict, resource_manifest: dict) -> None:
    resource_uuid = resource_manifest["header"]["uuid"]
    dependency = {"uuid": resource_uuid, "version": version(resource_manifest)}
    dependencies = behavior_manifest.setdefault("dependencies", [])
    dependencies[:] = [item for item in dependencies if item.get("uuid") != resource_uuid]
    dependencies.append(dependency)


def copy_pack(source: Path, destination: Path) -> None:
    shutil.copytree(source, destination)


def make_archive(source: Path, output: Path) -> None:
    output.parent.mkdir(parents=True, exist_ok=True)
    with zipfile.ZipFile(output, "w", compression=zipfile.ZIP_DEFLATED, compresslevel=6) as archive:
        for path in sorted(source.rglob("*")):
            if path.is_file():
                archive.write(path, path.relative_to(source).as_posix())


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("behavior", type=Path)
    parser.add_argument("resource", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()

    for archive in (args.behavior, args.resource):
        if not archive.is_file() or not zipfile.is_zipfile(archive):
            parser.error(f"Not a readable ZIP-based pack: {archive}")

    with tempfile.TemporaryDirectory(prefix="combine-mcaddon-") as temporary:
        temp = Path(temporary)
        behavior_extract = temp / "behavior-input"
        resource_extract = temp / "resource-input"
        safe_extract(args.behavior, behavior_extract)
        safe_extract(args.resource, resource_extract)

        behavior_root, behavior_manifest = find_pack(behavior_extract, "behavior")
        resource_root, resource_manifest = find_pack(resource_extract, "resource")
        add_resource_dependency(behavior_manifest, resource_manifest)

        combined = temp / "combined"
        behavior_out = combined / "Jujutsu Awakening BP"
        resource_out = combined / "Jujutsu Awakening RP"
        copy_pack(behavior_root, behavior_out)
        copy_pack(resource_root, resource_out)
        (behavior_out / "manifest.json").write_text(
            json.dumps(behavior_manifest, ensure_ascii=False, indent=4) + "\n",
            encoding="utf-8",
        )

        make_archive(combined, args.output)
        print(f"Behavior pack: {behavior_manifest['header'].get('name')}")
        print(f"Resource pack: {resource_manifest['header'].get('name')}")
        print(f"Resource dependency: {resource_manifest['header']['uuid']} {version(resource_manifest)}")
        print(f"Created: {args.output} ({args.output.stat().st_size} bytes)")


if __name__ == "__main__":
    main()
