#!/usr/bin/env bash

set -eu

git clone --recursive https://github.com/davidvuong/prezto "${ZDOTDIR:-$HOME}/.zprezto"

zsh -c "
    setopt EXTENDED_GLOB
    for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
      ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    done
"

ln -s ~/.zprezto/zsh_nocorrect ~/zsh_nocorrect

sudo chsh -s /bin/zsh
source ~/.zshrc
