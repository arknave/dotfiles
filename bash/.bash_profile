# ----------------------------------------------------------------------------
# Useful functions

command_exists () {
    type "$1" &> /dev/null ;
}

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

# fasd / fzf completion
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

if command_exists fasd ; then
    fasd_cache="$HOME/.fasd-init-bash"
    if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
        fasd --init posix-alias bash-hook bash-ccomp bash-ccomp-install >| "$fasd_cache"
    fi
    source "$fasd_cache"
    unset fasd_cache
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
