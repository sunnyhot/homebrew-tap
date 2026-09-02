# sunnyhot/homebrew-tap

个人自研 macOS 应用的 Homebrew 第三方源（Cask）。各 cask 每日自动跟源仓库最新 Release。

## 使用

```bash
brew tap sunnyhot/tap
brew install --cask sunnyhot/tap/guanlan        # 观澜（且慢投资看板）
brew install --cask sunnyhot/tap/car-rental-optimizer   # 租车比价助手
brew install --cask sunnyhot/tap/mac-software-steward   # MacSoftwareSteward
brew install --cask sunnyhot/tap/netbar        # NetBar
```

更新：`brew upgrade --cask` 或等待每日自动 bump。

注意：观澜等应用内置自动更新，会直接替换 /Applications 内的 app；用 brew 安装的请以 `brew upgrade` 为准，忽略应用内更新弹窗。

## 自动跟进

`.github/workflows/bump.yml` 每日 05:00（北京时间）运行 `scripts/bump.py`：
查各源仓库最新 Release → 下载资产算 sha256 → 更新 Casks/*.rb 的 version/sha256 并提交。
新增 cask：在 `Casks/` 加文件 + 在 `scripts/bump.py` 的 `SOURCES` 登记（源仓库须公开）。
