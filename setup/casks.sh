#!/usr/bin/env bash

set -eu

brew tap homebrew/cask-versions

brew install --cask google-chrome
brew install --cask discord
brew install --cask vlc
brew install --cask appcleaner
brew install --cask alfred
brew install --cask dropbox
brew install --cask spotify
brew install --cask docker
brew install --cask iterm2
brew install --cask lens
brew install --cask visual-studio-code
brew install --cask spectacle
brew install --cask notion
brew install --cask signal
brew install --cask whatsapp

brew cleanup
