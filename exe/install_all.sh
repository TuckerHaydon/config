#!/bin/bash

# Determine location of this file
CONFIG_DIR="$(realpath $( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )/../)"

# Helper variables
EXE_DIR="${CONFIG_DIR}/exe"

# Install submodules
cd ${CONFIG_DIR}
git submodule update --init --recursive

# Install components
cd ${EXE_DIR}
./install_vim.sh
./install_tmux.sh
./install_zsh.sh
