slim_path=`dirname $0`
fpath=( $slim_path $fpath )
source $slim_path/.zprofile

HISTFILE=$slim_path/.HISTFILE
HISTSIZE=1000
SAVEHIST=1000

# autoload -U promptinit && promptinit
# prompt pure

autoload -U compinit
compinit

setopt autocd
setopt extendedglob
setopt NO_NOMATCH

export FZF_DEFAULT_OPTS=" \
--color=bg+:#737373,bg:#131213,spinner:#d5d5d5,hl:#e4609b \
--color=fg:#d5d5d5,header:#ffffff,info:#e4609b,pointer:#ffffff \
--color=marker:#e4609b,fg+:#212121,prompt:#47bac0,hl+:#ffffff"

export CLICOLOR=1

export EDITOR="/usr/bin/nvim"

source $slim_path/keys.zsh
source $slim_path/history.zsh
source $slim_path/completion.zsh
source $slim_path/aliases.zsh
source $slim_path/correction.zsh
source $slim_path/stack.zsh
source $slim_path/zsh-autosuggestions/zsh-autosuggestions.zsh
source $slim_path/sudo.plugin.zsh
source $slim_path/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

eval "$(starship init zsh)"

# if command -v fasd >/dev/null 2>&1; then
#   eval "$(fasd --init zsh-hook zsh-ccomp zsh-ccomp-install zsh-wcomp zsh-wcomp-install posix-alias)"
# fi

