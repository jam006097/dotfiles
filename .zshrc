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
