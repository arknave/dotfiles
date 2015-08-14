# ----------------------------------------------------------------------------
# aliases

alias ls='ls -FG'

# ----------------------------------------------------------------------------
# exports

export EDITOR=vim

# Default blocksize for ls, df, du
export BLOCKSIZE=1k

# ----------------------------------------------------------------------------
# shopt

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

