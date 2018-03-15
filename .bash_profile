[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

export PATH="$PATH:$HOME/packer/"
export PATH=$HOME/bin:$PATH

PATH="$GEM_HOME/bin:$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting
[ -s ${HOME}/.rvm/scripts/rvm ] && source ${HOME}/.rvm/scripts/rvm
