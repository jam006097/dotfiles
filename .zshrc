PROMPT="%n@%m %~ %# "
HISTFILE=~/.zsh_history   
HISTSIZE=10000           
SAVEHIST=10000            
zshaddhistory() {
  [[ $? -eq 0 ]]  
}
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt SHARE_HISTORY
setopt SHARE_HISTORY

hash -d zenn=/home/jam00/work/zenn-content
hash -d kp=~/work/kids-playground
hash -d libe=/home/jam00/work/libecity
export PATH="$HOME/.cargo/bin:$PATH"

# Created by `pipx` on 2026-02-26 21:06:20
export PATH="$PATH:/home/jam00/.local/bin"
export PATH="/opt/nvim/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ] && \
source /usr/share/doc/fzf/examples/key-bindings.zsh

alias pm='python3 manage.py'
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:/snap/bin
