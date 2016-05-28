export MANPATH=/opt/local/man:$MANPATH
export PATH=$PATH:/usr/local/Cellar/mysql/5.6.13/bin
export CLASSPATH=$CLASSPATH:~/junit4.11:~/junit4.11/junit-4.11.jar
export HGENCODING=UTF-8
export EDITOR=vim

# pyenv,pyenv-virtualenv
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

autoload -U compinit
compinit

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

alias vim="/usr/local/bin/vim"
alias vi="/usr/local/bin/vim"
alias javac="javac -J-Dfile.encoding=UTF8"
alias java="java -Dfile.encoding=UTF8"
case "${OSTYPE}" in
freebsd*|darwin*)
    alias ls="ls -G -w"
    ;;
linux*)
    alias ls="ls --color"
    ;;
esac

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

if [[  -s "$HOME/.rvm/scripts/rvm" ]]; then
 source "$HOME/.rvm/scripts/rvm";
fi

export GOPATH=$HOME/gocode:$HOME/godir
export PATH=$PATH:$HOME/gocode/bin:$HOME/godir/bin

PATH="/Users/a14193/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="/Users/a14193/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/a14193/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/a14193/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/a14193/perl5"; export PERL_MM_OPT;
