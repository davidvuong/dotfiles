### Prerequisites

You must have the latest version of Xcode & the command-line tools for Xcode installed.

### Install

1. Clone dotfiles repository

    ```bash
    git clone https://github.com/davidvuong/dotfiles ~/dotfiles
    cd ~/dotfiles
    ```

2. Install `brew` and brews

    ```bash
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    sh setup/brews
    ```

3. Setup zsh with custom Prezto configuration

    ```zsh
    zsh
    git clone --recursive https://github.com/davidvuong/prezto "${ZDOTDIR:-$HOME}/.zprezto"

    setopt EXTENDED_GLOB
    for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
        ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    done

    ln -s ~/.zprezto/zsh_nocorrect ~/zsh_nocorrect

    chsh -s /bin/zsh
    ```

4. Install GCC (optional)

    ```bash
    brew tap homebrew/versions
    brew install gcc46
    ```

5. Symlink VIM configuration and install plugins via Vundle

    ```bash
    ln -s ~/dotfiles/vim ~/.vim
    ln -s ~/dotfiles/vim/vimrc ~/.vimrc
    ln -s ~/dotfiles/vim/gvimrc ~/.gvimrc
    ln -s ~/dotfiles/vim/ideavim ~/.ideavim

    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    vim +BundleInstall +qall
    ```

6. Install system level packages

    ```bash
    source ~/.zshrc

    sudo npm -g install grunt-cli karma bower nodemon

    pip install --upgrade pip
    sudo pip install -r ~/dotfiles/setup/requirements.txt
    ```

7. Symlink remaining configuration files

    ```bash
    ln -s ~/dotfiles/git/gitignore ~/.gitignore
    ln -s ~/dotfiles/git/gitconfig ~/.gitconfig

    ln -s ~/dotfiles/dircolors ~/.dircolors

    ln -s ~/Dropbox/sample ~/sample
    ln -s ~/Dropbox/tvm-records ~/tvm-records
    ln -s ~/Dropbox/tvm-exports ~/tvm-exports
    ln -s ~/Dropbox/tvm-config.json ~/.tvm-config.json
    ```

8. Configure Mac OS settings (optional)

    ```bash
    sh setup/osx
    ```

### Manual Theme Setup

Change iterm2 profile theme:

    iTerm>Preferences>Profiles>Colors>Load Presets...
    ... locate ~/dotfiles/iterm2-themes/
    ... import theme (dark or light)
    ... load theme (dark or light)

### Applications

The following are dev-apps that I install manually.

* iTerm2, [http://iterm2.com/downloads.html](http://iterm2.com/downloads.html)
* LaTeX, [http://www.tug.org/mactex/](http://www.tug.org/mactex/)
* WebStorm, [http://www.jetbrains.com/webstorm/](http://www.jetbrains.com/webstorm/)
* PyCharm, [http://www.jetbrains.com/pycharm/download/](http://www.jetbrains.com/pycharm/download/)
* Mou, [http://mouapp.com/](http://mouapp.com/)
* VirtualBox, [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)

The following applications can all be installed via `brew-cask`:

```
skype, vlc, transmission, google-chrome, firefox, appcleaner, alfred, dropbox, android-file-transfer, the-unarchiver, cyberduck, spotify, fitbit-connect
```

### Prompt Git Symbols (RHS)

For details on the symbols on the RHS of the prompt, refer to:

[https://github.com/sorin-ionescu/prezto/blob/master/modules/prompt/functions/prompt_sorin_setup](https://github.com/sorin-ionescu/prezto/blob/master/modules/prompt/functions/prompt_sorin_setup)
