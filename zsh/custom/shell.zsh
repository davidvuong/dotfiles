# Set Vim as the default terminal editor
export EDITOR="vim"

export PATH="/Users/davidvuong/Documents/rails_one_click/ruby/bin":$PATH

# Prepends "nocorrect" to avoid zsh's bs correct feature.
# zsh: correct 'x' to 'y'[nyae]?
if [ -f ~/zsh_nocorrect ]; then
    while read -r COMMAND; do
        alias $COMMAND="nocorrect $COMMAND"
    done < ~/zsh_nocorrect
fi
