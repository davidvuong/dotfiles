#! /bin/zsh

ln -s "${ZDOTDIR:-$HOME}"/dotfiles/zsh/prezto "${ZDOTDIR:-$HOME}"/.zprezto
ln -s "${ZDOTDIR:-$HOME}"/dotfiles/zsh/custom "${ZDOTDIR:-$HOME}"/.zcustom

# Load default runcoms from zprezto dir.
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# Load overrides.
rm "${ZDOTDIR:-$HOME}"/.zshrc
rm "${ZDOTDIR:-$HOME}"/.zpreztorc

ln -s "${ZDOTDIR:-$HOME}"/dotfiles/zsh/prezto-override/zshrc "${ZDOTDIR:-$HOME}"/.zshrc
ln -s "${ZDOTDIR:-$HOME}"/dotfiles/zsh/prezto-override/zpreztorc "${ZDOTDIR:-$HOME}"/.zpreztorc

# git
ln -s "${ZDOTDIR:-$HOME}"/dotfiles/git/gitconfig "${ZDOTDIR:-$HOME}"/.gitconfig

# NOTE: bash recongises .dircolors but zsh sees .dir_colors
ln -s "${ZDOTDIR:-$HOME}"/dotfiles/dircolors "${ZDOTDIR:-$HOME}"/.dir_colors
