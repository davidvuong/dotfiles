### Prerequisites

You must have the latest version of Xcode & the command-line tools for Xcode installed.

### Install

    git clone https://github.com/davidvuong/dotfiles ~/dotfiles
    cd ~/dotfiles

    # Brew Installs.
    sh setup/brews

    # Zsh & Prezto Install.
    zsh
    git clone --recursive https://github.com/davidvuong/prezto "${ZDOTDIR:-$HOME}/.zprezto"

    setopt EXTENDED_GLOB
    for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
        ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    done

    ln -s ~/.zprezto/zsh_nocorrect ~/zsh_nocorrect

    chsh -s /bin/zsh

    # Install GCC.
    brew tap homebrew/versions
    brew install gcc46

    # Vim Setup Install.
    ln -s ~/dotfiles/vim ~/.vim
    ln -s ~/dotfiles/vimrc ~/.vimrc
    ln -s ~/dotfiles/gvimrc ~/.gvimrc
    ln -s ~/dotfiles/ideavim ~/.ideavim

    # Vundle for Vim plugins.
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    vim +BundleInstall +qall

    # Link up Git files.
    ln -s ~/dotfiles/git/gitignore ~/.gitignore
    ln -s ~/dotfiles/git/gitconfig ~/.gitconfig

    # Python Pip & Modules.
    sudo pip install -r ~/dotfiles/setup/requirements.txt

    # npm Modules.
    sudo npm -g install grunt-cli karma bower nodemon

    source ~/.zshrc
    sh setup/gems

    # Last couple things to symlink.
    ln -s ~/dotfiles/dircolors ~/.dircolors

    # These symlinks need to be done after manually install apps.
    ln -s ~/Dropbox/sample ~/sample

    # Finally, set load the osx defaults.
    sh setup/osx

### Manual Themes Setup

Change iterm2 profile theme:

    iTerm>Preferences>Profiles>Colors>Load Presets...
    ... locate ~/dotfiles/iterm2/solarized
    ... import theme (dark or light)
    ... load theme (dark or light)

### Applications

The following are dev-apps that I install automatically.

* iTerm2, [http://iterm2.com/downloads.html](http://iterm2.com/downloads.html)
* LaTeX, [http://www.tug.org/mactex/](http://www.tug.org/mactex/)
* WebStorm, [http://www.jetbrains.com/webstorm/](http://www.jetbrains.com/webstorm/)
* PyCharm CE, [http://www.jetbrains.com/pycharm/download/](http://www.jetbrains.com/pycharm/download/)
* Mou, [http://mouapp.com/](http://mouapp.com/)
* VirtualBox, [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)
* Vagrant, [http://www.vagrantup.com/downloads.html](http://www.vagrantup.com/downloads.html)
* ChefDK, [http://downloads.getchef.com/chef-dk/mac/#/](http://downloads.getchef.com/chef-dk/mac/#/)

The following are non-developer specific applications I also use.

skype, vlc, transmission, google-chrome, firefox, appcleaner, alfred, dropbox, android-file-transfer, the-unarchiver, cyberduck, spotify, fitbit-connect

### Prompt Git Symbols (RHS)

For details on the symbols on the RHS of the prompt, refer to:

[https://github.com/sorin-ionescu/prezto/blob/master/modules/prompt/functions/prompt_sorin_setup](https://github.com/sorin-ionescu/prezto/blob/master/modules/prompt/functions/prompt_sorin_setup)
