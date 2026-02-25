# dotfiles

## リンク方法
### Linux
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
