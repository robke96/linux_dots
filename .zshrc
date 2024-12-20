export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="clean"

# load nvm - new
zstyle ':omz:plugins:nvm' lazy yes

plugins=(nvm git zsh-autosuggestions zsh-syntax-highlighting zsh-autocomplete)

source $ZSH/oh-my-zsh.sh

# spicetify commamnds
export PATH=$PATH:/home/robke/.spicetify

# bun completions
[ -s "/home/robke/.bun/_bun" ] && source "/home/robke/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# android studio paths
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# alias "code" for vscodium
alias code="codium"

#alias "neofetch" for fastfetch
alias neofetch="fastfetch"

#alias "up" for check for updates
alias up="sudo dnf5 update --refresh"
export PATH=$HOME/.local/bin:$PATH

# pnpm
export PNPM_HOME="/home/robke/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

#deno
. "/home/robke/.deno/env"
[ -s "/home/robke/.jabba/jabba.sh" ] && source "/home/robke/.jabba/jabba.sh"
