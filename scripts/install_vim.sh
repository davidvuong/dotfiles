#!/usr/bin/env bash

set -eu

ln -s ./vim ~/.vim
ln -s ./vim/vimrc ~/.vimrc
ln -s ./vim/gvimrc ~/.gvimrc
ln -s ./vim/ideavim ~/.ideavim

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

# Command-T requires an additional compilation step.
cd ~/.vim/bundle/command-t/
rake make
cd -
