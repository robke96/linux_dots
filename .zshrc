export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="clean"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-autocomplete)

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:/home/robke/.spicetify
source /usr/share/nvm/init-nvm.sh

# bun completions
[ -s "/home/robke/.bun/_bun" ] && source "/home/robke/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
