#!/usr/bin/env bash

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

# Development & general tools
brew install htop
brew install wget
brew install pstree
brew install tree
brew install gcal
brew install cloc
brew install ack

# Libraries
brew install libffi

# PostgreSQL + PostGIS
brew install postgis
brew install gdal
brew install libgeoip

brew install redis
brew install rabbitmq

# Languages
brew install python3
brew install python
brew install scala
brew install ruby

# JavaScript
brew install flow

# Version managers
brew install nvm

# Other programs
brew install macvim
brew install graphviz
brew install watchman

# DevOps
brew install docker
brew install packer
brew install terraform
brew install terragrunt

# Remove outdated versions from the cellar
brew cleanup
brew linkapps
