# Dotfiles (Mac OS X El Capitan)

**Welcome to my dotfiles!**

This repository is a collection of configuration files I personally use to setup my Mac OS X El Capitan machine. It uses Homebrew/Casks to manage most of my applications, ZSH as the shell (zprezto flavour) and VIM as the terminal editor. It also contains a few "me" specific configuration files e.g. `./git/gitconfig` so if you're interested in pick files out of this project, you may want to leave those out.

## System Requirements

As always, you need to install Xcode and Xcode command line tools to get anything done on a Mac. Executing `xcode-select --install` should download the latest version of Xcode. I also use iTerm2 instead of the default Terminal.app, you can download that [here](http://iterm2.com/downloads.html).

## Setup and Install

1. Clone the git repository:

  ```bash
  git clone git@github.com:davidvuong/dotfiles.git ~/dotfiles
  cd ~/dotfiles
  ```

1. Install homebrew, brews, brew-casks and casks:

  ```bash
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

  sh setup/brews
  sh setup/casks
  ```

1. Clone and setup my personal prezto fork:

    ```bash
    zsh
    git clone --recursive https://github.com/davidvuong/prezto "${ZDOTDIR:-$HOME}/.zprezto"

    setopt EXTENDED_GLOB
    for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
        ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    done

    ln -s ~/.zprezto/zsh_nocorrect ~/zsh_nocorrect

    chsh -s /bin/zsh
    ```

1. Install NVM (Node Version Manager) and Node:

    ```bash
    mkdir ~/.nvm
    cp $(brew --prefix nvm)/nvm-exec ~/.nvm/

    nvm install v5.1.0
    nvm alias default v5.1.0
    ```

1. Install and setup VIM (+ plugins via Vundle):

    ```bash
    ln -s ~/dotfiles/vim ~/.vim
    ln -s ~/dotfiles/vim/vimrc ~/.vimrc
    ln -s ~/dotfiles/vim/gvimrc ~/.gvimrc
    ln -s ~/dotfiles/vim/ideavim ~/.ideavim

    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    vim +BundleInstall +qall
    ```

1. Install a few system level packages:

    ```bash
    source ~/.zshrc

    sudo npm -g install grunt-cli karma bower nodemon

    pip install --upgrade pip
    sudo pip install -r ~/dotfiles/setup/requirements.txt
    ```

1. Symlink remaining configuration files:

    ```bash
    ln -s ~/dotfiles/git/gitignore ~/.gitignore
    ln -s ~/dotfiles/git/gitconfig ~/.gitconfig

    ln -s ~/dotfiles/dircolors ~/.dircolors
    ```

1. Symlink Dropbox directories and files (skip):

    ```
    ln -s ~/Dropbox/workspace ~/workspace
    ln -s ~/Dropbox/tvm-records ~/tvm-records
    ln -s ~/Dropbox/tvm-exports ~/tvm-exports
    ln -s ~/Dropbox/tvm-config.json ~/.tvm-config.json
    ```

1. Configure Mac OS settings (optional):

    ```bash
    sh setup/osx
    ```

### Manual theme setup

Change the iTerm2 profile theme:

    iTerm>Preferences>Profiles>Colors>Load Presets...
    ... locate ~/dotfiles/iterm2-themes/
    ... import theme (dark or light)
    ... load theme (dark or light)

### LaTeX

* LaTeX, [http://www.tug.org/mactex/](http://www.tug.org/mactex/)

### Prompt git symbols (RHS)

[https://github.com/sorin-ionescu/prezto/blob/master/modules/prompt/functions/prompt_sorin_setup](https://github.com/sorin-ionescu/prezto/blob/master/modules/prompt/functions/prompt_sorin_setup)
