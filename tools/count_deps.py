#!/usr/bin/env python3
"""Count dependencies across every manifest in this repository."""

import json
import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent


def count(path: str) -> int:
    p = ROOT / path
    if not p.exists():
        return 0
    text = p.read_text(encoding="utf-8")
    if path == "package.json":
        return len(json.loads(text).get("dependencies", {}))
    if path == "requirements.txt":
        return sum(1 for ln in text.splitlines() if ln.strip() and not ln.lstrip().startswith("#"))
    if path == "Gemfile":
        return sum(1 for ln in text.splitlines() if re.match(r"s*gem ", ln))
    if path == "Cargo.toml":
        return sum(1 for ln in text.splitlines() if " = " in ln and "=" in ln.split(" = ")[0].strip())
    if path == "go.mod":
        return sum(1 for ln in text.splitlines() if "	" in ln and not ln.lstrip().startswith("//"))
    if path == "composer.json":
        data = json.loads(text)
        return len(data.get("require", {})) + len(data.get("require-dev", {}))
    if path == "pom.xml":
        return text.count("<dependency>")
    return 0


def main():
    files = [
        "package.json", "requirements.txt", "Gemfile", "Cargo.toml",
        "go.mod", "composer.json", "pom.xml", "packages.config",
        "pubspec.yaml", "Package.swift", "Podfile",
    ]
    total = 0
    print("ecosystem counts:")
    for f in files:
        c = count(f)
        total += c
        print(f"  {f}: {c}")
    print(f"TOTAL declared dependencies: {total}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
