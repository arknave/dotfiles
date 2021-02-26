# source other files

source "$HOME/.zsh_prompt"

# ----------------------------------------------------------------------------
# aliases
alias vi='vim'
alias c='g++ -std=c++17 -Wall -Werror -Wshadow -O2 -pedantic -fsanitize=undefined,address'
alias ls='ls -F'

# ----------------------------------------------------------------------------
# exports
export EDITOR=vim

# Save command history
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
HISTSIZE=2000
SAVEHIST=1000

export PATH="/usr/local/opt/openjdk/bin:$PATH"
export CLICOLOR=1

# ----------------------------------------------------------------------------
# set
set -o vi

bindkey '^R' history-incremental-search-backward
