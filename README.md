# Dotfiles (macOS Big Sur)

**Welcome to dotfiles!**

This repository is a collection of config files I use to setup my Mac OS X El Capitan machine. It uses Homebrew/Casks to manage most of my applications, ZSH as the shell (zprezto flavour) and VIM as the terminal editor.

It also contains a few "me" specific configuration files e.g. `./git/gitconfig` so if you're interested in using my dotfiles, you may want to leave those out!

## System Requirements

As always, you need to install Xcode command line tools to get anything done on a Mac. You can install it by executing the following command:

```bash
xcode-select --install
```

## Download & Install

1. Clone the repository:

   ```bash
   git clone https://github.com/davidvuong/dotfiles.git ~/dotfiles
   ```

1. Run the installation script:

   ```bash
   bash ./scripts/install.sh
   ```

1. Configure Mac OS settings (optional):

   ```bash
   bash setup/osx
   ```

1. Remaining manual setup [here](setup-manual/README.md) (optional).

1. Replace the HTTPS remote with `git` when everything is done:

   ```bash
   git remote set-url origin git@github.com:davidvuong/dotfiles.git
   ```
