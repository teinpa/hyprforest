slim_path=`dirname $0`
fpath=( $slim_path $fpath )
source $slim_path/.zprofile

HISTFILE=$slim_path/.HISTFILE
HISTSIZE=1000
SAVEHIST=1000

autoload -U promptinit && promptinit
prompt pure

autoload -U compinit
compinit

setopt autocd
setopt extendedglob
setopt NO_NOMATCH

export FZF_DEFAULT_OPTS=" \
--color=bg+:#56635f,bg:#232a2e,spinner:#475258,hl:#d3c6aa \
--color=fg:#d3c6aa,header:#e67e80,info:#d699b6,pointer:#a7c080 \
--color=marker:#a7c080,fg+:#9da9a0,prompt:#d699b6,hl+:#e67e80"

export CLICOLOR=1

source $slim_path/keys.zsh
source $slim_path/history.zsh
source $slim_path/completion.zsh
source $slim_path/aliases.zsh
source $slim_path/correction.zsh
source $slim_path/stack.zsh
source $slim_path/zsh-autosuggestions/zsh-autosuggestions.zsh
source $slim_path/sudo.plugin.zsh
source $slim_path/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

if command -v fasd >/dev/null 2>&1; then
  eval "$(fasd --init zsh-hook zsh-ccomp zsh-ccomp-install zsh-wcomp zsh-wcomp-install posix-alias)"
fi

