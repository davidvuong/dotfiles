#!/usr/bin/env bash

set -eu

brew cask install atom
bash ./setup/apm.sh

mkdir ~/.atom
ln -s ~/dotfiles/atom/config.cson ~/.atom/
ln -s ~/dotfiles/atom/keymap.cson ~/.atom/
ln -s ~/dotfiles/atom/snippets.cson ~/.atom/
ln -s ~/dotfiles/atom/styles.less ~/.atom/
