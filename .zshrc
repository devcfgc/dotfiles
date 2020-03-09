# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/cfgomez/.oh-my-zsh

ZSH_THEME="agnoster"

plugins=(
  auto-color-ls
  docker
  git
  git-extras
  golang
  kubectl
  kubetail
  kube-ps1
  ruby
  rvm
  sudo
  vagrant
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

PROMPT=$PROMPT'$(kube_ps1) '

# User configuration
# ENV
export EDITOR='vim'

# https://github.com/kubernetes-sigs/krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

source $(dirname $(gem which colorls))/tab_complete.sh
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/cfgomez/.aliases

source <(kubectl completion zsh)
