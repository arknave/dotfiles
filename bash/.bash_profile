# ----------------------------------------------------------------------------
# source other files
for file in ~/.{bashrc,bash_prompt,bash_local}; do
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

export EDITOR=emacs

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

