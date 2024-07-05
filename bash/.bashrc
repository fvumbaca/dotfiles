export PATH=$PATH:/opt/homebrew/bin

export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

# Setup Completions
brew_etc="$(brew --prefix)/etc" && [[ -r "${brew_etc}/profile.d/bash_completion.sh" ]] && . "${brew_etc}/profile.d/bash_completion.sh"


# Kubectl alias and completion
alias k=kubectl
complete -o default -F __start_kubectl k

export PS1='\[\e[38;5;39m\]\W\[\e[0m\]\\$ '