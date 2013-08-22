alias l="ls -l"
alias ll="ls -la"

alias cd..="cd .."
alias ..3="../../../"

alias h='history'
alias j='jobs -l'

# Use MacVim if we're on a Mac.
if [ "$(uname)" = "Darwin" ]; then;
    alias vim="mvim -v"
fi

# I don't like the default rm alias: alias rm="${aliases[rm]:-rm} -i"
unalias rm
