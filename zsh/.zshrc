# source other files

source "$HOME/.zsh_prompt"

# ----------------------------------------------------------------------------
# aliases
alias vi='nvim'
alias vim='nvim'
alias c='g++ -std=c++17 -Wall -Werror -Wshadow -O2 -pedantic -fsanitize=undefined,address -Wl,-stack_size -Wl,0x10000000'
alias cf='g++ -std=c++17 -Wall -Werror -Wshadow -O2 -Ofast -pedantic -Wl,-stack_size -Wl,0x10000000'
alias ls='ls -F'
alias rot13='tr A-MN-Za-mn-z N-ZA-Mn-za-m'

# ----------------------------------------------------------------------------
# exports
export EDITOR=vim

# Save command history
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
HISTSIZE=2000
SAVEHIST=1000

export PATH="/Users/arnav/bin:/usr/local/opt/openjdk/bin:$PATH"
export CLICOLOR=1

# ----------------------------------------------------------------------------
# set
set -o vi

bindkey '^R' history-incremental-search-backward
