#!/bin/sh

# deps
# install brew:
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# ruby/erlang/etc. dependencies
brew install autoconf readline

# set up pass
brew install pass
# TODO:
# - init pass store after importing gpg key
# - set repo as remote, change branch to main

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install p10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0

# install asdf plugins
asdf plugin add ruby
asdf plugin add erlang
asdf plugin add elixir
asdf plugin add nodejs

# aws+kubectl helpers
brew install sshuttle
brew install awscli kubectl kubectx
brew install --cask aws-vault
