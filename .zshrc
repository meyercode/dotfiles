fpath=($(brew --prefix)/share/zsh/site-functions $fpath)
fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit bashcompinit
compinit
bashcompinit

source "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc"

# zi
source <(curl -sL https://git.io/zi-loader); zzinit

zi light zsh-users/zsh-completions
zi light zsh-users/zsh-autosuggestions
zi light z-shell/F-Sy-H

zi light spaceship-prompt/spaceship-prompt
zi light jeffreytse/zsh-vi-mode

# My aliases
zi snippet ~/.bash_aliases
