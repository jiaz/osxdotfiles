#!/usr/bin/env sh

. ../func.sh

if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install rbenv ruby-build
fi

eval "$(rbenv init -)"

[ -z "$(rbenv versions | grep 2.1.7)" ] && rbenv install 2.1.7
rbenv rehash
rbenv global 2.1.7
