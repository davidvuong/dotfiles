#!/bin/bash

set -eu

brew install nvm
brew install yarn --without-node

mkdir -p ~/.nvm
cp $(brew --prefix nvm)/nvm-exec ~/.nvm/

source ~/.zshrc

nvm install v6.12.2
nvm alias default v6.12.2
