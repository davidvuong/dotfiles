# Set Vim as the default terminal editor
export EDITOR="vim"

# If homebrew is installed then we want to use brews instead of defaults.
if [ -d "/usr/local/Cellar" ]; then;
    export PATH=/usr/local/Cellar:$PATH
fi

# Prepends "nocorrect" to avoid zsh's bs correct feature.
#
# zsh: correct 'x' to 'y'[nyae]?
if [ -f ~/zsh_nocorrect ]; then
    while read -r COMMAND; do
        alias $COMMAND="nocorrect $COMMAND"
    done < ~/zsh_nocorrect
fi
