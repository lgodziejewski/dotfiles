# custom inits stored below

# add ~/bin to PATH
export PATH=$PATH:~/bin

# initialize Android stuff
export ANDROID_HOME=~/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# aliases
alias dkc='docker-compose'

# These are necessary for ruby to compile (and probably other stuff using libffi
export LDFLAGS="-L/opt/homebrew/opt/libffi/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libffi/include"

# aws
export AWS_VAULT_BACKEND=pass
alias aws-shell='aws-vault exec -d 8h -n'
alias aws-login='aws-vault login -d 8h'

eval "$(/opt/homebrew/bin/brew shellenv)"
