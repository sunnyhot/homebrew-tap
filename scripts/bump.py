#!/usr/bin/env python3
"""每日检查各源仓库最新 Release,把 Casks/ 里的 version+sha256 跟到最新。

设计:tap 仓库集中自动化,六个源仓库零改动。只处理公开仓库的 cask;
新增 cask 时在 SOURCES 登记 repo 与资产名模板({v} = 无 v 前缀的版本号)。
"""
import hashlib
import json
import os
import re
import sys
import urllib.request

TAP_ROOT = os.path.join(os.path.dirname(__file__), "..", "Casks")
GITHUB_API = "https://api.github.com"

SOURCES = {
    "guanlan": {"repo": "sunnyhot/guanlan-dashboard", "asset": "QiemanDashboard-{v}.zip"},
    "car-rental-optimizer": {"repo": "sunnyhot/car-rental-optimizer", "asset": "CarRentalOptimizer-v{v}.zip"},
    "mac-software-steward": {"repo": "sunnyhot/mac-software-steward", "asset": "MacSoftwareSteward-v{v}.zip"},
    "netbar": {"repo": "sunnyhot/NetBar", "asset": "NetBar.app.zip"},
}

HEADERS = {"User-Agent": "homebrew-tap-bump"}
if os.environ.get("GITHUB_TOKEN"):
    HEADERS["Authorization"] = f"Bearer {os.environ['GITHUB_TOKEN']}"


def http_json(url):
    request = urllib.request.Request(url, headers=HEADERS)
    with urllib.request.urlopen(request, timeout=30) as response:
        return json.load(response)


def http_bytes(url):
    request = urllib.request.Request(url, headers=HEADERS)
    with urllib.request.urlopen(request, timeout=300) as response:
        return response.read()


def cask_path(name):
    return os.path.join(TAP_ROOT, f"{name}.rb")


def read_version(path):
    text = open(path, encoding="utf-8").read()
    match = re.search(r'version "([^"]+)"', text)
    return match.group(1) if match else None


def rewrite(path, version, sha256):
    text = open(path, encoding="utf-8").read()
    text = re.sub(r'version "[^"]+"', f'version "{version}"', text)
    text = re.sub(r'sha256 "[0-9a-f]{64}"', f'sha256 "{sha256}"', text)
    open(path, "w", encoding="utf-8").write(text)


def main():
    changed = []
    for name, source in SOURCES.items():
        path = cask_path(name)
        if not os.path.exists(path):
            print(f"skip {name}: cask 不存在")
            continue
        release = http_json(f"{GITHUB_API}/repos/{source['repo']}/releases/latest")
        tag = release["tag_name"]
        version = tag[1:] if tag.startswith("v") else tag
        current = read_version(path)
        if current == version:
            print(f"ok {name}: {version} 已是最新")
            continue
        asset_name = source["asset"].format(v=version)
        asset_url = f"https://github.com/{source['repo']}/releases/download/{tag}/{asset_name}"
        print(f"bump {name}: {current} -> {version}, 拉取 {asset_url}")
        data = http_bytes(asset_url)
        sha256 = hashlib.sha256(data).hexdigest()
        rewrite(path, version, sha256)
        changed.append(f"{name} {current} -> {version}")
    print(json.dumps({"changed": changed}, ensure_ascii=False))
    return 0


if __name__ == "__main__":
    sys.exit(main())
