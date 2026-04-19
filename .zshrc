PROMPT="%n@%m %~ %# "
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
zshaddhistory() {
  [[ $? -eq 0 ]]
}
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# Named directories
hash -d zenn=~/work/zenn-content
hash -d kp=~/work/kids-playground
hash -d libe=~/work/libecity

# Rust
export PATH="$HOME/.cargo/bin:$PATH"

# Go
export PATH=$PATH:$HOME/go/bin

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# fzf (brew install fzf 後に有効)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Aliases
alias pm='python3 manage.py'

# Homebrew (Apple Silicon)
export PATH="/opt/homebrew/bin:$PATH"

# Claude Code
export PATH="$HOME/.local/bin:$PATH"
