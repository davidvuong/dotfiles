#!/usr/bin/env bash

set -eu

brew install python3
brew install python

sudo pip2 install --ignore-installed virtualenv
sudo pip2 install --ignore-installed virtualenvwrapper
sudo pip2 install --ignore-installed flake8
sudo pip2 install --ignore-installed git-up
