# dotfiles

## リンク方法

### macOS (Apple Silicon)
```zsh
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.wezterm.lua ~/.wezterm.lua
source ~/.zshrc
```

### Linux (Ubuntu/WSL)
```bash
ln -s ~/dotfiles/.zshrc ~/.zshrc
```

### Windows
1. 既存ファイル削除（PowerShell）
```powershell
Remove-Item C:\Users\jam00\.wezterm.lua
```
2. cmd 経由でリンク作成（管理者権限）
```powershell
cmd /c mklink C:\Users\jam00\.wezterm.lua \\wsl$\Ubuntu\home\jam00\dotfiles\.wezterm.lua
```

## セットアップ手順 (macOS)

```zsh
# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# ツール
brew install fzf gh
brew install --cask wezterm font-jetbrains-mono

# リポジトリ
mkdir ~/work && cd ~/work
git clone git@github.com:jam006097/zenn-content.git
git clone git@github.com:jam006097/kids-playground.git
git clone git@github.com:jam006097/absence-reporter.git
git clone git@github.com:jam006097/libecity.git
```
