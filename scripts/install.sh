#!/usr/bin/env bash

set -eu

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brews and casks"
bash ./setup/brews.sh
bash ./setup/casks.sh

echo "Installing ZSH and zprezto!"
bash ./scripts/install_zsh.sh

echo "Installing NodeJS, Python, & Rust"
zsh ./scripts/install_node.sh
zsh ./scripts/install_python.sh
zsh ./scripts/install_rust.sh

echo "Install Vim"
zsh ./scripts/install_vim.sh

echo "Adding necessary symbolic links"
ln -s ~/dotfiles/git/gitignore ~/.gitignore
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/dotfiles/dircolors ~/.dircolors

echo "Successfully installed davidvuong/dotfiles!";
