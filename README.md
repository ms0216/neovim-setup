# Neovim Setup Project

このプロジェクトは、Neovimを簡単にインストールするためのスクリプトを提供します。以下の手順に従って、スクリプトを取得し、実行してください。

## スクリプトの取得と実行

### Windowの場合
```bash
wget https://raw.githubusercontent.com/ms0216/neovim-setup/refs/heads/main/scripts/install-neovim.ps1 | Select-Object -ExpandProperty Content | Invoke-Expression
```

### macOS / Linux の場合
```bash
wget -O - https://raw.githubusercontent.com/ms0216/neovim-setup/refs/heads/main/scripts/install-neovim.sh | bash
```

## スクリプトの説明

`scripts/install-neovim.ps1` は、Wingetを使用してNeovimをインストールするためのPowerShellスクリプトです。

`scripts/install-neovim.sh` は、macOS と Linux で Neovim をインストールするためのシェルスクリプトです。

## CI/CD

このプロジェクトには、GitHub Actionsを使用したCI/CDワークフローが含まれています。`.github/workflows/ci.yml` に設定が含まれています。