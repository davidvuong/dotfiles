#!/usr/bin/env bash

set -eu

source ~/.zshrc

nvm install v5.9.1
nvm alias default v5.9.1

ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vim/vimrc ~/.vimrc
ln -s ~/dotfiles/vim/gvimrc ~/.gvimrc
ln -s ~/dotfiles/vim/ideavim ~/.ideavim

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

# Command-T requires an additional compilation step.
cd ~/.vim/bundle/command-t/
rake make
cd -
