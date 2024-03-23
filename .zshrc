export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="clean"

# load nvm - new
zstyle ':omz:plugins:nvm' lazy yes

plugins=(nvm git zsh-autosuggestions zsh-syntax-highlighting zsh-autocomplete)

source $ZSH/oh-my-zsh.sh

export PATH=$PATH:/home/robke/.spicetify

# old load nvm - node version manager
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun completions
[ -s "/home/robke/.bun/_bun" ] && source "/home/robke/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# android studio
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# alias for vscodium
alias code="codium"
