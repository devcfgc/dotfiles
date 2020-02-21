#!/bin/bash

set -e

/bin/bash updatedotfiles.sh

echo "RUBY + GEM ARE REQUIRED"
echo "## AND DOWNLOAD ZSH PLUGINS ##"
cd $HOME/.oh-my-zsh/plugins \
    && git clone https://github.com/gretzky/auto-color-ls \
    && git clone https://github.com/johanhaleby/kubetail.git kubetail \
    && sudo gem install -n /usr/local/bin colorls \
    && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git