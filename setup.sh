#!/usr/bin/env sh

set -e

# get script dir
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )

. func.sh

# general folder structure
mkdir -p ~/Workspace/tools
mkdir -p ~/bin

run_setup git

if [[ "$OSTYPE" == "darwin"* ]]; then
    run_setup osx
    run_setup osxtools
    which brew > /dev/null || ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew update
    run_setup fonts
    run_setup iterm2
fi

run_setup zsh
run_setup vim
run_setup emacs
run_setup node
run_setup python
run_setup ruby
run_setup clojure

if [[ "$OSTYPE" == "darwin"* ]]; then
    brew linkapps
fi
