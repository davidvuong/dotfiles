#!/usr/bin/env bash

set -eu

brew install python3
brew install python

sudo pip install --upgrade pip
sudo pip install -r ~/dotfiles/setup/requirements.txt
