#!/usr/bin/env bash

set -eu

# Makes sure we're on the latest version
brew update
brew upgrade

# Core tools
brew install zsh
brew install git
brew install git-extras
brew install coreutils
brew install fswatch
brew install watchman

# Network tools
brew install nmap
brew install iftop
brew install bmon
brew install httpie

# Development & general tools
brew install htop
brew install wget
brew install pstree
brew install tree
brew install gcal
brew install cloc
brew install ack
brew install jq
brew install vim
brew install --HEAD neovim
brew install ctop

# Core
brew install libffi
brew install ffmpeg

# Ruby
brew install ruby

# JS
brew install yarn

# DevOps
brew install docker-compose
brew install helm

# Fonts
brew tap homebrew/cask-fonts
brew cask install font-fira-code

# Remove outdated versions from the cellar
brew cleanup
