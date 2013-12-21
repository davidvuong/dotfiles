### Prerequisites

You must have the latest version of Xcode & the command-line tools for Xcode installed.

### Install

    git clone https://github.com/davidvuong/dotfiles ~/dotfiles
    cd ~/dotfiles

    # Brews & Casks (GUI Applications) Install.
    sh setup/brews
    sh setup/casks

    # Zsh & Prezto Install.
    zsh
    git clone --recursive https://github.com/davidvuong/prezto "${ZDOTDIR:-$HOME}/.zprezto"

    setopt EXTENDED_GLOB
    for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
        ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    done

    chsh -s /bin/zsh

    # Vim Install.
    ln -s ~/dotfiles/vim ~/.vim
    ln -s ~/dotfiles/vimrc ~/.vimrc

    # Vundle for Vim plugins.
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    vim +BundleInstall +qall

    # Link up Git files.
    ln -s ~/dotfiles/git/gitignore ~/.gitignore
    ln -s ~/dotfiles/git/gitconfig ~/.gitconfig

    # Python Pip & Modules.
    sudo easy_install pip
    sudo pip install -r ~/dotfiles/setup/requirements.txt

    # Installing Rails, RVM & Gems.
    # FIXME: As of me writing this, this is currently broken.
    curl -L https://get.rvm.io | bash -s stable --autolibs=enabled --rails

    # Configure Postgres.
    #   - I don't think we have to run initdb since the brew install already does it for us.
    initdb /usr/local/var/postgres -E utf8

    sudo gem install lunchy

    mkdir -p ~/Library/LaunchAgents
    cp /usr/local/Cellar/postgresql/VERSION/homebrew.mxcl.postgresql.plist ~/Library/LaunchAgents/

    # Last couple things to symlink.
    ln -s ~/dotfiles/dircolors ~/.dircolors

### Themes

I'm using solarized themes for both VIM and iterm2. To use them as well:

    iTerm>Preferences>Profiles>Colors>Load Presets...
    ... locate ~/dotfiles/iterm2/solarized
    ... pick a theme (dark or light)
    ... then use it (what we did earlier was just an import)

Finally, set zsh as the default shell when we open up a terminal session:

    iTerm>Preferences>Profiles>General>Command>Command>zsh

### Applications

The following are apps that could not be installed automatically.

* LaTeX, [http://www.tug.org/mactex/](http://www.tug.org/mactex/)

### Prompt Git Symbols (RHS)

For details on the symbols on the RHS of the prompt, refer to:

[https://github.com/sorin-ionescu/prezto/blob/master/modules/prompt/functions/prompt_sorin_setup](https://github.com/sorin-ionescu/prezto/blob/master/modules/prompt/functions/prompt_sorin_setup)
