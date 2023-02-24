#!/bin/bash

# oh-my-zsh
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh

# Install theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Install suggestion plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Homebrew
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
brew bundle --file '${HOME}/.Brewfile'

# Node.js
## Volta
curl https://get.volta.sh | bash
volta install node

## Prettier
npm i -g prettier
