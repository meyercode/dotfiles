. "$HOME/.cargo/env"

export ASDF_DIR=~/.asdf
PATH="$ASDF_DIR/bin:$PATH"

export EDITOR='nvim'
export VISUAL='nvim'

# pnpm
export PNPM_HOME="/Users/adam/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

export PATH="$PATH:/Users/adam/src/flutter/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/adam/src/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/adam/src/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/adam/src/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/adam/src/google-cloud-sdk/completion.zsh.inc'; fi
