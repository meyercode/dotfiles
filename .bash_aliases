# some more ls aliases
alias ls='ls -h --color=auto'
alias ll='ls -Al'
alias la='ls -A'
alias l='ls'

alias cp='cp -i'                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB

# ssh client
#alias ssh='TERM=xterm-256color ssh'

alias B='echo 🅱️ ommand not found'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias vimc='vim ~/.vimrc'
alias nvimc='vim ~/.config/nvim/init.vim'
alias ös='ls -Al'

alias pn='pnpm'
alias px='pnpm exec'

# Path navigation 
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'

cl() {
    cd "$1"
    ls
}

alias dwight="cat ~/.dwight | lolcat"

chjava() {
    export JAVA_HOME=`/usr/libexec/java_home -v $1`
}
