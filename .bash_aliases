# some more ls aliases
alias ls='ls -h --color=auto --group-directories-first'
alias ll='ls -Al'
alias la='ls -A'
alias l='ls'

alias cp="cp -i"                          # confirm before overwriting something
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

alias java11="export JAVA_HOME=/Library/Java/JavaVirtualMachines/openjdk-11.0.2.jdk/Contents/Home/"
alias java17="export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-17.0.1.jdk/Contents/Home/"

# Switch GH accounts and change SSH settings between work and personal profiles
#alias work="cp ~/.gitconfig.work ~/.gitconfig && cp ~/.ssh/config.work ~/.ssh/config"
#alias personal="cp ~/.gitconfig.personal ~/.gitconfig && cp ~/.ssh/config.personal ~/.ssh/config"

