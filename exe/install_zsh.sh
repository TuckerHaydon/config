#!/bin/bash

# Determine location of this file
CONFIG_DIR="$(realpath $( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )/../)"

# Helper variables
ZSH_DIR="${CONFIG_DIR}/zsh"

# Build zshrc from template
cp ${ZSH_DIR}/zshrc-template ${ZSH_DIR}/zshrc

## Path to installation
echo -e "# Path to your oh-my-zsh installation.\nexport ZSH=\"${HOME}/.oh-my-zsh\"\n" | \
   cat - ${ZSH_DIR}/zshrc | tee ${ZSH_DIR}/zshrc > /dev/null

## Path to aliases
echo -e "# Soure aliases file.\nsource ${ZSH_DIR}/aliases\n" >> ${ZSH_DIR}/zshrc

# Install zsh
if [ -e "${HOME}/.zshrc" ]; then
    rm -rf ${HOME}/.zshrc
fi
ln -s ${ZSH_DIR}/zshrc ${HOME}/.zshrc
