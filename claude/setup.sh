#!/bin/bash
set -e

DOTFILES_CLAUDE="$(cd "$(dirname "$0")" && pwd)"
CLAUDE_DIR="$HOME/.claude"

echo "Checking dependencies..."
for cmd in jq curl git; do
  if ! command -v "$cmd" &>/dev/null; then
    echo "Missing: $cmd — install with: brew install $cmd"
    exit 1
  fi
done
echo "All dependencies OK"

mkdir -p "$CLAUDE_DIR"

link() {
  local src="$1" dst="$2"
  if [ -e "$dst" ] && [ ! -L "$dst" ]; then
    mv "$dst" "${dst}.bak"
    echo "Backed up: $dst → ${dst}.bak"
  fi
  ln -sf "$src" "$dst"
  echo "Linked: $dst → $src"
}

link "$DOTFILES_CLAUDE/statusline.sh" "$CLAUDE_DIR/statusline.sh"
link "$DOTFILES_CLAUDE/settings.json" "$CLAUDE_DIR/settings.json"

echo "Done. Restart Claude Code to apply."
