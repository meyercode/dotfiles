export MANPATH="/usr/local/man:$MANPATH"

export TERMINAL="alacritty"

if [[ -n $SSH_CONNECTION ]]; then  
  export EDITOR='vim'
else  
  export EDITOR='mvim'
fi

export VISUAL=nvim

## PLUGINS
# FZF settings
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='--preview "bat --style=numbers --color=always --line-range :500 {}" --height 80% --layout=reverse --border'
export FZF_DEFAULT_COMMAND="rg --files --hidden --follow -g '!.git/'"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export BAT_THEME="Dracula"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" --no-use # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. "$HOME/.cargo/env"

