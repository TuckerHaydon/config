#!/bin/bash

# Determine location of this file
CONFIG_DIR="$(realpath $( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )/../)"

# Helper variables
VIM_DIR="${CONFIG_DIR}/vim"

# Install vim
if [ -e "${HOME}/.vimrc" ]; then
    rm -rf ${HOME}/.vimrc
fi
ln -s ${VIM_DIR}/vimrc ${HOME}/.vimrc

# Move the vim folder into place
if [ -d "${HOME}/.vim" ]; then
    rm -rf ${HOME}/.vim
fi
ln -s ${VIM_DIR}/vim ${HOME}/.vim

vim +PlugInstall +qall
