#!/usr/bin/env sh

. ../func.sh

sudo -v

# Install emacs
if [[ "$OSTYPE" == "darwin"* ]]; then
    brew tap railwaycat/emacsmacport
    brew install emacs-mac --with-spacemacs-icon
fi

checkout_master_and_pull_latest ~/.emacs.d https://github.com/syl20bnr/spacemacs

create_link ${1}/spacemacs ~/.spacemacs

if [[ "$OSTYPE" == "darwin"* ]]; then
    # Install LaunchAgents
    copy_replace gnu.emacs.daemon.plist ~/Library/LaunchAgents/gnu.emacs.daemon.plist
    launchctl load /Library/LaunchAgents/gnu.emacs.daemon.plist
fi

