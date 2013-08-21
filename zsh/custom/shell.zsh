# Set Vim as the default terminal editor
export EDITOR="vim"

# TODO: Clean up $PATH at the end of the semester and do a proper ruby & RoR install.
export PATH="/Users/davidvuong/Documents/rails_one_click/ruby/bin":$PATH

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
