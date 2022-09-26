autoload -Uz compinit bashcompinit
compinit
bashcompinit

eval "$(fnm env --use-on-cd)"

source <(curl -sL https://git.io/zi-loader); zzinit

zi light zsh-users/zsh-completions
zi light zsh-users/zsh-autosuggestions
zi light z-shell/F-Sy-H

zi light dominik-schwabe/zsh-fnm
zi light spaceship-prompt/spaceship-prompt
zi light jeffreytse/zsh-vi-mode

# My aliases
zi snippet ~/.bash_aliases
