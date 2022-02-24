source ~/.bash_aliases

# oh-my-zsh
export ZSH="/Users/adam/.oh-my-zsh"
ZSH_THEME="simple"

plugins=(git)

# enable the default zsh completions!
autoload -Uz compinit && compinit

source $ZSH/oh-my-zsh.sh
bindkey -v
bindkey -M vicmd v edit-command-line

function zle-line-init zle-keymap-select {
    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
    RPS2=$RPS1
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

java17

#dwight

