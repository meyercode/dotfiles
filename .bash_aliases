# some more ls aliases
alias ls='ls -h --color=auto --group-directories-first'
alias ll='ls -Al'
alias la='ls -A'
alias l='ls'

alias B='echo 🅱️ ommand not found'
alias v='vim'
alias ös='ls -Al'

cl() {
    cd "$1"
    ls
}

okular() {
    /usr/bin/okular "$1" &> /dev/null &
}

# status() {
#     systemctl status "$1"
# }
# 
# restart() {
#     systemctl restart "$1"
# }


