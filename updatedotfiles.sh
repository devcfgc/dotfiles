#!/bin/bash

set -e

echo "## COPY DOTFILES TO HOME ##"
cp {.aliases,.profile,.tmux.conf,.zshrc} $HOME \
    && echo 'source <(kubectl completion bash)' >>~/.bashrc \
    && echo 'source <(kubectl completion zsh)' >>~/.zshrc