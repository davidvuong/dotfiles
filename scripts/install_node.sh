#!/bin/bash

set -eu

brew install nvm

mkdir -p ~/.nvm
cp $(brew --prefix nvm)/nvm-exec ~/.nvm/

source ~/.zshrc

nvm install v6.9.5
nvm alias default v6.9.5

bash ./setup/npm.sh
