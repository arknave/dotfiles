# ----------------------------------------------------------------------------
# aliases
alias vi='vim'
alias c='g++ -std=c++17 -Wall -Werror -Wshadow -O2 -pedantic -fsanitize=undefined,address'

# ----------------------------------------------------------------------------
# exports
export EDITOR=vim

# Save command history
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
HISTSIZE=2000
SAVEHIST=1000


# ----------------------------------------------------------------------------
# set
set -o vi
