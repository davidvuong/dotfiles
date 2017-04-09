#!/usr/bin/env bash

set -eu

brew tap caskroom/versions

brew cask install skype
brew cask install slack
brew cask install vlc
brew cask install transmission
brew cask install google-chrome
brew cask install opera
brew cask install firefox
brew cask install appcleaner
brew cask install alfred
brew cask install dropbox
brew cask install android-file-transfer
brew cask install the-unarchiver
brew cask install cyberduck
brew cask install spotify
brew cask install caffeine

brew cask install mou
brew cask install iterm2
brew cask install psequel

brew cask install virtualbox
brew cask install vagrant

brew cask install docker
brew cask install docker-toolbox

brew cask install sublime-text

brew cleanup
