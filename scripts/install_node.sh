#!/bin/bash

set -eu

brew install nvm

mkdir -p ~/.nvm
cp $(brew --prefix nvm)/nvm-exec ~/.nvm/

source ~/.zshrc

nvm install 16
