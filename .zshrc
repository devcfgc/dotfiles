# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/devcfgc/.oh-my-zsh

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

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# # https://github.com/kubernetes-sigs/krew
# export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"