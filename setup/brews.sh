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
brew install ctop

# Core
brew install libffi
brew install ffmpeg

brew install ruby
brew install yarn
brew install helm

# Docker & Minikube
#
# @see: https://itnext.io/goodbye-docker-desktop-hello-minikube-3649f2a1c469
brew install hyperkit
brew install docker
brew install kubectl
brew install minikube

# Fonts
brew tap homebrew/cask-fonts
brew cask install font-fira-code

# Remove outdated versions from the cellar
brew cleanup
