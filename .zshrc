# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/devcfgc/.oh-my-zsh

# ZSH_THEME="pygmalion"
# ZSH_THEME="af-magic"
ZSH_THEME="agnoster"

plugins=(
    bundler
    docker
    gem
    git
    git-extras
    golang
    kubectl
    rake
    ruby
    rvm
    vagrant
)

source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# Load aliases file
if [ -f ~/.aliases ]; then
	. ~/.aliases
fi

if [ $commands[kubectl] ]; then
    source <(kubectl completion zsh)
fi

######## ADDITIONS TO PATH ########
# https://github.com/rvm/rvm
PATH="$GEM_HOME/bin:$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting
[ -s ${HOME}/.rvm/scripts/rvm ] && source ${HOME}/.rvm/scripts/rvm

# https://github.com/Azure/acs-engine
export PATH="$PATH:$HOME/acs-engine/"
export PATH=$HOME/bin:$PATH

# https://github.com/hashicorp/packer
export PATH="$PATH:$HOME/packer/"
export PATH=$HOME/bin:$PATH

# https://github.com/spinnaker/roer
export PATH="$PATH:$HOME/roer/"
export PATH=$HOME/bin:$PATH

# https://github.com/golang/go
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
