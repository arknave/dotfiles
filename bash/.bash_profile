# ----------------------------------------------------------------------------
# Useful functions

command_exists () {
    type "$1" &> /dev/null ;
}

# ----------------------------------------------------------------------------
# source other files

for file in ~/.{bash_prompt,bashrc}; do
    echo "$file"
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

# ----------------------------------------------------------------------------
# bash_completion

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

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
export HISTFILESIZE=500000
export HISTSIZE=100000
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# ----------------------------------------------------------------------------
# set
set -o vi
