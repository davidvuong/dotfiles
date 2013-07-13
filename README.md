Dotfiles
===

This is a dotfile repository for my Mac OSX and Ubuntu-LTS12.4 machines. To install:

    python -c "`curl -fsSL https://raw.github.com/davidvuong/dotfiles/master/install.py`"

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

    iTerm2: iTerm>Preferences>Profiles>General>Command>Command>zsh
    gnome:  Terminal>Edit>Profile Preferences>Title and Command>Custom command>zsh

That should be it.
