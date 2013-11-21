#!/usr/bin/env python
# -*- coding: utf-8 -*-
from subprocess import call, PIPE, Popen
import os
import sys
import shutil
import shlex
import getpass

HOME = os.path.expanduser('~')
DOT_HOME = os.path.join(HOME, 'dotfiles')
PW_PIPE = None


def _remove_at(path):
    try:
        if os.path.islink(path) or os.path.isfile(path):
            os.remove(path)
        else:  # Not a symbolic link or file.
            shutil.rmtree(path)
    except (IOError, OSError):
        pass  # Path does not exist.


def setup_vim():
    for vimf in ['.vimrc', '.vim']:
        _remove_at(os.path.join(HOME, vimf))
        os.symlink(os.path.join(DOT_HOME, vimf[1:]), os.path.join(HOME, vimf))

    # Install Vundle.
    call(['git', 'clone', 'https://github.com/gmarik/vundle.git',
          os.path.join(HOME, '.vim/bundle/vundle')])

    # Install bundles.
    call(['vim', '+BundleInstall', '+qall'])


def setup_zsh():
    _remove_at(os.path.join(HOME, '.zprezto'))
    call(['git', 'clone', '--recursive',
          'https://github.com/sorin-ionescu/prezto.git',
          os.path.join(HOME, '.zprezto')])

    # Setup prezto symlinks.
    overrides = []  # [file_name, ...]
    for root, _, files in os.walk(os.path.join(DOT_HOME, 'zsh/prezto-override')):
        for override in files:
            overrides.append(override)

            _remove_at(os.path.join(HOME, '.' + override))
            os.symlink(os.path.join(root, override),
                       os.path.join(HOME, '.' + override))

    for root, _, files in os.walk(os.path.join(HOME, '.zprezto/runcoms')):
        for runcom in files:
            if runcom.lower() == 'readme.md' or runcom in overrides:
                continue

            _remove_at(os.path.join(HOME, '.' + runcom))
            os.symlink(os.path.join(root, runcom),
                       os.path.join(HOME, '.' + runcom))

    # Link Custom Zsh configurations.
    _remove_at(os.path.join(HOME, '.zcustom'))
    os.symlink(os.path.join(DOT_HOME, 'zsh/custom'),
               os.path.join(HOME, '.zcustom'))

    # Set Zsh as the default shell.
    call(['chsh', '-s', '/bin/zsh'])


def setup_git():
    # Adding symlinks to global .gitignore and .gitconfig.
    for root, _, files in os.walk(os.path.join(DOT_HOME, 'git')):
        for gitf in files:
            gitp = os.path.join(DOT_HOME, os.path.join(root, gitf))
            os.symlink(gitp, os.path.join(HOME, '.' + gitf))


def setup_python():
    Popen(shlex.split('sudo -S easy_install pip'), stdin=PW_PIPE.stdout)

    requirements = os.path.join(DOT_HOME, 'requirements.txt')
    Popen(['sudo', '-S', 'pip', 'install', '-r', requirements], stdin=PW_PIPE.stdout)


def setup_ruby():
    # TODO: Install RVM, Rails, system-wide gems
    pass


def setup_postgres():
    pass


def setup_iterm2():
    # TODO: Automatically configure iterm2 settings.
    pass


def main():
    response = raw_input('Existing files will be altered. Continue? [y/n]')
    if response != 'y':
        sys.exit()

    global PW_PIPE
    password = getpass.getpass("Password:")
    PW_PIPE = Popen(['echo', password], stdout=PIPE)

    # All paths should be relative to $HOME.
    os.chdir(HOME)

    _remove_at(DOT_HOME)
    call(['git', 'clone', 'git@github.com:davidvuong/dotfiles.git', DOT_HOME])
    call(['sh', 'brew'])
    call(['sh', 'casks'])

    setup_vim()
    setup_zsh()
    setup_git()
    setup_ruby()
    setup_python()
    setup_postgres()

    # Link up remaining dotfiles.
    #
    # TODO: Place this into its own function when it gets bigger.
    os.symlink(os.path.join(HOME, os.path.join(DOT_HOME, '.dircolors')),
               os.path.join(DOT_HOME, '.dircolors'))

    print 'Successfully installed davidvuong\'s dotfiles.'
    response = raw_input('Also set sensible osx defaults? [y/n]')
    if response == 'y':
        call(shlex.split('sh osx'))


if __name__ == '__main__':
    main()
