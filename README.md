Dotfiles
===

This is a dotfiles repository for my Mac OSX and Ubuntu LTS machines. There's no install script so you'll have to do a manual install.

Recursive clone to include all submodules:

    git clone --recursive git@github.com:davidvuong/dotfiles.git

Next, we have to install the [vundles](https://github.com/gmarik/vundle):

    # Add symlinks to vim.
    cd
    ln -s ~/dotfiles/vim .vim
    ln -s ~/dotfiles/vimrc .vimrc

    # Open up vim and install bundles.
    vim
    :BundleInstall

Next, we have to setup the terminal themes.

**Mac (iterm2):**

    iTerm>Preferences>Profiles>Colors>Load Presets...
    ... locate ~/dotfiles/iterm2/solarized
    ... pick a theme (dark or light)
    ... then use it (what we did earlier was just an import)

**Ubuntu (gnome-terminal):**

    cd ~/dotfiles/gnome-terminal/gnome-terminal-colors-solarized/
    ./solarized

Now, set zsh as our default shell when we open up a terminal session:

**Mac (iTerm2):**

    iTerm>Preferences>Profiles>General>Command>Command>zsh

**Ubuntu (gnome-terminal):**

    Terminal>Edit>Profile Preferences>Title and Command>Custom command>zsh

Make sure to check *"Run a custom command instead of my shell"*.

Finally, we need to add symbolic links:

    sh dotfiles/symlinks.sh

*NOTE: Make sure to use 256colors.*

**Mac (iterm2):**

    iTerm>Preferences>Profiles>Terminal>Report Terminal Type>xterm-256color

One last thing to remember, we need to add a symbolic link to the solarized colorscheme after we download all the bundles.

    ln -s .vim/bundles/vim-colors-solarized/colors/solarized.vim .vim/colors/solarized.vim

That should be it.
