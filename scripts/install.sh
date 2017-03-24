#!/usr/bin/env bash

set -eu

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

bash ./setup/brews.sh
bash ./setup/casks.sh

sudo ./install_zsh.zsh

bash ./install_node.sh
bash ./install_python.sh
bash ./install_vim.sh
bash ./install_atom.sh

ln -s ~/dotfiles/git/gitignore ~/.gitignore
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig
ln -s ~/dotfiles/dircolors ~/.dircolors

echo "Successfully installed davidvuong/dotfiles!";
