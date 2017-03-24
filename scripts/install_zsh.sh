#!/usr/bin/env bash

set -eu

git clone --recursive https://github.com/davidvuong/prezto "${ZDOTDIR:-$HOME}/.zprezto"
zsh ./scripts/install_zsh.zsh

ln -s ~/.zprezto/zsh_nocorrect ~/zsh_nocorrect

chsh -s /bin/zsh
