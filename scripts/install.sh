#!/usr/bin/env bash

set -eu

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brews and casks"
bash ./setup/brews.sh
bash ./setup/casks.sh

echo "Installing ZSH and zprezto!"
bash ./scripts/install_zsh.sh

echo "Installing NodeJS, Python, Vim, Atom"
zsh ./scripts/install_node.sh
zsh ./scripts/install_python.sh
zsh ./scripts/install_vim.sh
zsh ./scripts/install_atom.sh

echo "Adding necessary symbolic links"
ln -s ./git/gitignore ~/.gitignore
ln -s ./git/gitconfig ~/.gitconfig
ln -s ./dircolors ~/.dircolors

echo "Successfully installed davidvuong/dotfiles!";
