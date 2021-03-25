# some more ls aliases
alias ls='ls -h --color=auto --group-directories-first'
alias ll='ls -Al'
alias la='ls -A'
alias l='ls'

# ssh client
alias ssh='TERM=xterm-256color ssh'

alias B='echo 🅱️ ommand not found'
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias ös='ls -Al'

# Path navigation 
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
cl() {
    cd "$1"
    ls
}

okular() {
    /usr/bin/okular "$1" &> /dev/null &
}

# alias vimwiki-conv='find ~/vimwiki/ -name "*.md" | while read i; do pandoc "$i" -o "${i%.*}.html" -c ~/vimwiki/bootstrap-3.4.1-dist/css/bootstrap.min.css; done'
alias vimwiki-conv='find ~/vimwiki/ -name "*.wiki" | while read i; do pandoc -f markdown -t html "$i" -o "${i%.*}.html" -c ~/vimwiki/style/pandoc.css; done'
alias wiki='cd ~/wiki && vim README.md'

alias dwight="cat ~/.dwight | lolcat"

