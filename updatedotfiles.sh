#!/bin/bash

set -e

echo "## COPY DOTFILES TO HOME ##"
cp {.aliases,.profile,.tmux.conf,.zshrc} $HOME \
    && echo -e "\nsource <(kubectl completion bash)" >> ~/.bashrc \
    && echo -e "\nsource $HOME/.aliases" >> ~/.zshrc \
    && echo -e "\nsource <(kubectl completion zsh)" >> ~/.zshrc