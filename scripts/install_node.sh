#!/bin/bash

set -eu

brew install nvm
brew install yarn --without-node

mkdir -p ~/.nvm
cp $(brew --prefix nvm)/nvm-exec ~/.nvm/

source ~/.zshrc

nvm install v8.11.3
nvm alias default v8.11.3
