#!/usr/bin/env sh

. ../func.sh

brew cask install iterm2
copy_replace ${1}/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
