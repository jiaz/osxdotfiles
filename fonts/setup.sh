#!/usr/bin/env sh

. ../func.sh

# Setup fonts
pushd_ ~/Workspace/tools
checkout_master_and_pull_latest fonts https://github.com/powerline/fonts.git
cd fonts
sh install.sh
popd_
