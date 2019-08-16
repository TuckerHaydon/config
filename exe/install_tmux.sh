#!/bin/bash

# Determine location of the config directory
CONFIG_DIR="$(realpath $( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )/../)"

# Helper variables
TMUX_DIR="${CONFIG_DIR}/tmux"

# Install tmux files
if [ -e "${HOME}/.tmux.conf" ]; then
    rm -rf ${HOME}/.tmux.conf
fi
ln -s ${TMUX_DIR}/tmux.conf ${HOME}/.tmux.conf

if [ -d "${HOME}/.tmux" ]; then
    rm -rf ${HOME}/.tmux
fi
ln -s ${TMUX_DIR}/tmux/ ${HOME}/.tmux

