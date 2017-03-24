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
brew install ctop

# Libraries
brew install libffi

# Languages
brew install ruby

# Scala
brew cask install java
brew install sbt

# JavaScript
brew install flow

# DevOps
brew install docker-compose
brew install packer
brew install terraform
brew install terragrunt

# Other programs
brew install macvim
brew install graphviz
brew install watchman

# Remove outdated versions from the cellar
brew cleanup
