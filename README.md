# Dotfiles (Mac OS X El Capitan)

**Welcome to my dotfiles!**

This repository is a collection of configuration files I personally use to setup my Mac OS X El Capitan machine. It uses Homebrew/Casks to manage most of my applications, ZSH as the shell (zprezto flavour) and VIM as the terminal editor. It also contains a few "me" specific configuration files e.g. `./git/gitconfig` so if you're interested in pick files out of this project, you may want to leave those out.

## System Requirements

As always, you need to install Xcode and Xcode command line tools to get anything done on a Mac. First, you need to download Xcode from the AppStore. Next, you need to install the command line tools. You do that by executing the following command:

```bash
xcode-select --install
```

I also use iTerm2 instead of the default Terminal.app, you can download that [here](http://iterm2.com/downloads.html).

## Download & Install

1. Clone the git repository:

  ```bash
  git clone git@github.com:davidvuong/dotfiles.git ~/dotfiles
  cd ~/dotfiles
  ```

1. Run the installation script:

  ```bash
  sh ./scripts/install.sh
  ```

1. Add symlinks to directories and files connected to my Dropbox:

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

## Manual iTerm2 Theme Setup

Change the iTerm2 profile theme:

  ```
  iTerm>Preferences>Profiles>Colors>Load Presets...
  .. locate ~/dotfiles/iterm2-themes/
  .. import theme (dark or light)
  .. load theme (dark or light)
  ```

## LaTeX

* LaTeX, [http://www.tug.org/mactex/](http://www.tug.org/mactex/)
