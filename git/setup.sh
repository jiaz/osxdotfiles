#!/usr/bin/env sh

. ../func.sh

# Get information
read -e -p "Enter your git username: " GIT_USERNAME
read -e -p "Enter your git email: " GIT_EMAIL

# Install git diffall
pushd_ ~/Workspace/tools
checkout_master_and_pull_latest git-diffall https://github.com/thenigan/git-diffall.git
create_link `pwd`/git-diffall/git-diffall ~/bin/git-diffall
chmod +x ~/bin/git-diffall
popd_

# Setup git config
copy_replace ${1}/gitconfig ~/.gitconfig
git config --global user.name $GIT_USERNAME
git config --global user.email $GIT_EMAIL
