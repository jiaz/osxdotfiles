#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install jenv
    brew install leiningen
fi
