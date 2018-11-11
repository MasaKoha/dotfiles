export HGENCODING=UTF-8
export EDITOR=vim

bindkey -e

export LSCOLORS=gxfxcxdxbxegedabagacad
export LS_COLORS='di=36:ln=35:so=32:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*' list-colors 'di=36' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

local GREEN=$'%{\e[1;32m%}'
local PINK=$'%{\e[1;35m%}'
local DEFAULT=$'%{\e[1;m%}'
local CYAN=$'%{\e[1;36m%}'
local WHITE=$'%{\e[1;37m%}'
local YELLOW=$'%{\e[0;33m%}'

PROMPT="$WHITE% [Masa]~%% $DEFAULT "
RPROMPT="[$PINK%~$DEFAULT]"
setopt PROMPT_SUBST

HISTFILE=~/.zsh_history
HISTSIZE=2000000
SAVEHIST=2000000
setopt hist_ignore_all_dups
setopt share_history

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
export LISTMAX=100000
setopt list_packed

setopt nolistbeep
setopt no_beep

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
