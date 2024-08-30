#!/usr/bin/env bash

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Alacritty
brew install --cask alacritty
brew install alacritty
git clone https://github.com/rose-pine/alacritty.git # Rosé Pine theme
cp ./alacritty/dist/* ~/.config/alacritty
rm -r ./alacritty

# Tools
brew install neovim rg fd fzf
# Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Other languages
brew install go python
