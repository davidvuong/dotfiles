# Set Vim as the default terminal editor
export EDITOR="vim"

export PATH="/usr/local/bin":$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Shell virtualenvwrapper startup.
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    export PROJECT_HOME=$HOME/Devel
    source /usr/local/bin/virtualenvwrapper.sh
fi

# Enable bash-style comments.
setopt interactivecomments

# Prepends "nocorrect" to avoid zsh's bs correct feature.
# zsh: correct 'x' to 'y'[nyae]?
if [ -f ~/zsh_nocorrect ]; then
    while read -r COMMAND; do
        alias $COMMAND="nocorrect $COMMAND"
    done < ~/zsh_nocorrect
fi
