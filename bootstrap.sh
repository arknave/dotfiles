#!/usr/bin/env bash

# This script just calls stow on various subdirectories, depending on either input parameters or operating systems

# Install vim plug if it isn't already.
function install_vim_plug () {
    if [[ ! -f vim/.vim/autoload/plug.vim ]]; then
        curl -fLo vim/.vim/autoload/plug.vim --create-dirs \
                https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    fi
}

# go to the right directory
# Bash Version
# pushd $(dirname "${BASH_SOURCE}") > /dev/null

# Zsh Version
pushd $(dirname "${(%):-%N}") > /dev/null

# For use on OSX
# install_vim_plug
# stow vim
# stow bash
stow zsh
stow git
# stow tmux
stow nvim

popd > /dev/null
