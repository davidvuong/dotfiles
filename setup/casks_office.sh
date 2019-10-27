#!/usr/bin/env bash

set -eu

brew tap homebrew/cask-versions

brew cask install google-chrome
brew cask install firefox

brew cask install slack
brew cask install alfred
brew cask install spotify
brew cask install caffeine
brew cask install iterm2
brew cask install visual-studio-code
brew cask install spectacle

brew cask install docker

brew cleanup
