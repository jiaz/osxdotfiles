#!/usr/bin/env sh

. ../func.sh

# install nvm
checkout_master_and_pull_latest ~/.nvm https://github.com/creationix/nvm.git

# change to latest version tag
pushd_ ~/.nvm
git checkout --quiet `git describe --abbrev=0 --tags`
popd_

# install node 0.10, 0.12 and 4.1
. ~/.nvm/nvm.sh
nvm install 0.10
nvm install 0.12
nvm install 4.1

