#!/bin/sh

# ruby/erlang/etc. dependencies
brew install autoconf readline postgresql shared-mime-info protobuf

# deps required by app logic
brew install imagemagick

# if ruby installation fails later on, try using the following flag:
# RUBY_CFLAGS=-DUSE_FFI_CLOSURE_ALLOC

# aws+kubectl helpers
brew install sshuttle
brew install awscli kubectl kubectx k9s
brew install --cask aws-vault
