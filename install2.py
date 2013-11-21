#!/usr/bin/env python
# -*- coding: utf-* -*-
"""Before running this install script please ensure that if you have any
existing raw dotfiles within $HOME, please back them up.
"""
from subprocess import call
from os import path
from os import makedirs

import os
import shutil

HOME = path.expanduser("~")
DOT_HOME = path.join(HOME, "dotfiles")


def _remove(PATH):
    try:
        if path.islink(PATH) or path.isfile(PATH):
            os.remove(PATH)
        else:
            shutil.rmtree(PATH)
    except (IOError, OSError):
        pass  # PATH does not exist.


def setup_vim():
    for vimf in [".vimrc", ".vim"]:
        _remove(path.join(HOME, vimf))
        os.symlink(path.join(DOT_HOME, vimf[1:]), path.join(HOME, vimf))

    # Install Vundle.
    call(["git", "clone", "https://github.com/gmarik/vundle.git",
          path.join(HOME, ".vim/bundle/vundle")])

    # Install bundles.
    call(["vim", "+BundleInstall", "+qall"])


def setup_zsh():
    if not path.exists(path.join(HOME, ".zprezto")):
        call(["git", "clone", "--recursive",
              "https://github.com/sorin-ionescu/prezto.git",
              path.join(HOME, ".zprezto")])

    # Setup prezto symlinks.
    overrides = []  # [file_name, ...]
    for root, _, files in os.walk(path.join(DOT_HOME, "zsh/prezto-override")):
        for override in files:
            overrides.append(override)

            _remove(path.join(HOME, "." + override))
            os.symlink(path.join(root, override),
                       path.join(HOME, "." + override))

    for root, _, files in os.walk(path.join(HOME, ".zprezto/runcoms")):
        for runcom in files:
            if runcom.lower() == "readme.md" or runcom in overrides:
                continue

            _remove(path.join(HOME, "." + runcom))
            os.symlink(path.join(root, runcom),
                       path.join(HOME, "." + runcom))

    # Link Custom Zsh configurations.
    _remove(path.join(HOME, ".zcustom"))
    os.symlink(path.join(DOT_HOME, "zsh/custom"),
               path.join(HOME, ".zcustom"))

    # Set Zsh as the default shell.
    call(["chsh", "-s", "/bin/zsh"])


def setup_brew():
    if not path.exists("/usr/local/bin/brew"):
        call(["ruby", "-e",
              '"$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"'])

    # Install brews -- Some brews like gcc, we have to tap before we can
    # download/install. It's long and I'd rather not automate them.
    with open("dotfiles/homebrew/install.txt", "rU") as brews:
        for brew in brews:
            if brew.startswith("#"):
                continue

            call(["brew", "install", brew[:-1]])

    if not path.exists(path.join(HOME, "Applications")):
        makedirs(path.join(HOME, "Applications"))

    call(["brew", "linkapps"])


def main():
    os.chdir(HOME)  # All paths should be relative to $HOME.

    if not path.exists(DOT_HOME):
        call(["git", "clone", "--recursive",
              "git@github.com:davidvuong/dotfiles.git", DOT_HOME])

    setup_vim()
    setup_zsh()

    # Finally, link up the remaining dotfiles.
    for dotf in [".dircolors", "git/.gitignore", "git/.gitconfig"]:
        parent, child = path.split(dotf)
        _remove(child)

        os.symlink(path.join(DOT_HOME, path.join(parent, child[1:])),
                   path.join(HOME, path.split(dotf)[1]))

    setup_brew()

    # Install pip + a few Python packages -- I have to enter my password for
    # sudo twice (after czsh and again for pip).
    call(["sudo", "easy_install", "pip"])
    call(["sudo", "pip", "install", "-r", "dotfiles/pip/requirements.txt"])

    print 'Install complete. Start a new terminal to see changes.'


if __name__ == "__main__":
    main()