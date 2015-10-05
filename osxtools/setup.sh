#!/usr/bin/env sh

brew install readline gdbm icu4c sqlite
brew install the_silver_searcher ctags

brew list | grep 'brew-cask' > /dev/null || brew install caskroom/cask/brew-cask
brew update && brew upgrade && brew cleanup && brew cask cleanup
