ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

# Plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

zinit light spaceship-prompt/spaceship-prompt
zinit light jeffreytse/zsh-vi-mode

export NVM_AUTO_USE=true
zinit light lukechilds/zsh-nvm

# Load completions
autoload -Uz compinit && compinit

zinit cdreplay -q

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Aliases
alias ls='ls -h --color'
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
alias ös='ls -Al'

alias pn='pnpm'
alias px='pnpm exec'

alias kc='kubectl'

# Path navigation 
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'

alias brew='arch -arm64e /opt/homebrew/bin/brew'
alias xbrew='arch -x86_64 /usr/local/bin/brew'

cl() {
    cd "$1"
    ls
}

alias dwight="cat ~/.dwight | lolcat"

chjava() {
    export JAVA_HOME=`/usr/libexec/java_home -v $1`
}
alias java8='export JAVA_HOME=/usr/local/opt/openjdk@8/libexec/openjdk.jdk/Contents/Home'

portproc() {
    sudo lsof -i -P | grep LISTEN | grep ":$1" | awk '{print $2}'
}

clearport() {
    sudo lsof -i -P | grep LISTEN | grep :"$1" | awk '{print $2}' | xargs kill -9
}

# Shell integrations
eval "$(fzf --zsh)"
