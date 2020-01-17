# some more ls aliases
alias ls='ls -h --color=auto --group-directories-first'
alias ll='ls -Al'
alias la='ls -A'
alias l='ls'

alias B='echo 🅱️ ommand not found'
alias v='vim'
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

# status() {
#     systemctl status "$1"
# }
# 
# restart() {
#     systemctl restart "$1"
# }

# alias vimwiki-conv='find ~/vimwiki/ -name "*.md" | while read i; do pandoc "$i" -o "${i%.*}.html" -c ~/vimwiki/bootstrap-3.4.1-dist/css/bootstrap.min.css; done'
alias vimwiki-conv='find ~/vimwiki/ -name "*.wiki" | while read i; do pandoc -f markdown -t html "$i" -o "${i%.*}.html" -c ~/vimwiki/style/pandoc.css; done'
