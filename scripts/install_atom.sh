#!/usr/bin/env bash

set -eu

brew cask install atom
bash ./setup/apm.sh

mkdir ~/.atom
ln -s ./atom/config.cson ~/.atom/
ln -s ./atom/keymap.cson ~/.atom/
ln -s ./atom/snippets.cson ~/.atom/
ln -s ./atom/styles.less ~/.atom/
