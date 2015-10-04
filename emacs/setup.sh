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
    sed -e 's/{USERNAME}/'"${USER}"'/g' ${1}/gnu.emacs.daemon.plist > /tmp/gnu.emacs.daemon.plist.tmp
    sudo mv /tmp/gnu.emacs.daemon.plist.tmp /Library/LaunchAgents/gnu.emacs.daemon.plist
    launchctl load /Library/LaunchAgents/gnu.emacs.daemon.plist
fi

