#!/usr/bin/env sh

if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install python pyenv pyenv-virtualenv

    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"

    [ -z "$( pyenv versions | grep 2.7.10 )" ] && env PYTHON_CONFIGURE_OPTS="--enable-framework CC=clang" \
        CFLAGS="-I$(brew --prefix openssl)/include -I$(brew --prefix readline)/include -I$(brew --prefix gdbm)/include -I$(brew --prefix sqlite)/include" \
        LDFLAGS="-L$(brew --prefix openssl)/lib -L$(brew --prefix readline)/lib -L$(brew --prefix gdbm)/lib -L$(brew --prefix sqlite)/lib" \
        pyenv install 2.7.10

    [ -z "$( pyenv versions | grep 3.5.0 )" ] && env PYTHON_CONFIGURE_OPTS="--enable-framework CC=clang" \
        CFLAGS="-I$(brew --prefix openssl)/include -I$(brew --prefix readline)/include -I$(brew --prefix gdbm)/include -I$(brew --prefix sqlite)/include" \
        LDFLAGS="-L$(brew --prefix openssl)/lib -L$(brew --prefix readline)/lib -L$(brew --prefix gdbm)/lib -L$(brew --prefix sqlite)/lib" \
        pyenv install 3.5.0

    pyenv rehash
    pyenv global 2.7.10
fi
