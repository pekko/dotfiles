if [ -z $HISTFILE ]; then
    HISTFILE=$HOME/.zsh_history
fi
HISTSIZE=10000
SAVEHIST=10000

setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history

autoload -U history-search-end
setopt HIST_IGNORE_SPACE

zle -N history-search-end

bindkey "\e[A" history-search-backward
bindkey "\e[B" history-search-forward
