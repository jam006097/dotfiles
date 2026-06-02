PROMPT="%n@%m %~ %# "
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
zshaddhistory() {
  [[ $? -eq 0 ]]
}
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS

# Named directories
hash -d zenn=~/work/zenn-content
hash -d kp=~/work/kids-playground
hash -d libe=~/work/libecity
hash -d ab=~/work/absence-reporter

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Go
export PATH=$PATH:$HOME/go/bin

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# fzf
eval "$(fzf --zsh)"

# Aliases
alias pm='python3 manage.py'

# Homebrew (Apple Silicon)
eval "$(/opt/homebrew/bin/brew shellenv)"

# Claude Code
export PATH="$HOME/.local/bin:$PATH"
eval "$(fnm env --use-on-cd)"

# pnpm
export PNPM_HOME="/Users/ik/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
alias cc='claude --dangerously-skip-permissions'

# shieibusbot
busbot() { (cd /Users/ik/work/shieibusbot && poetry run python -m shieibusbot "$@") }
_busbot() {
  _arguments \
    '--once[1回だけ確認して終了]' \
    '--interval[確認間隔（分）]:分数:(1 5 10 15 30 60)'
}
compdef _busbot busbot
