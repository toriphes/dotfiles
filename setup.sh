#!/usr/bin bash

##########
### Setup the initial developer environment
### @author: Giulio Ganci
##########

# set zsh as default shell
chsh -s $(which zsh)

# install developer tools
xcode-select —-install

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# install nvm and node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
nvm install --lts

# install homebrew package manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install base dependencies
brew install stow cocoapods ffmpeg zfz tmux neovim\
  sqlite peco htop zsh-autosuggestions eza php

# nerd fonts
brew tap homebrew/cask-fonts

# install apps
brew install --cask iterm2 firefox grammarly-desktop libreoffice\
  google-chrome firefox visual-studio-code sublime-text\
  slack telegram notion obsidian github android-studio\
  docker dropbox insomnia mongodb-compass postman spotify rectangle\
  tableplus sequel-ace teamviewer vlc utm zoom whatsapp\
  font-meslo-lg-nerd-font


# install dofiles
cd ~
git clone https://github.com/toriphes/dotfiles .dotfiles
pushd .dotfiles
stow */
popd

# install tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install laravel valet
composer global require laravel/valet
