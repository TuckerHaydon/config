#!/bin/bash

# Determine location of this file
CONFIG_DIR="$(realpath $( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )/../)"

# Helper variables
ZSH_DIR="${CONFIG_DIR}/zsh"

# Install zsh
if [ -e "${HOME}/.zshrc" ]; then
    rm -rf ${HOME}/.zshrc
fi
ln -s ${ZSH_DIR}/zshrc ${HOME}/.zshrc
