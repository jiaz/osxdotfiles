#!/usr/bin/env sh

. ../func.sh

if [[ "$OSTYPE" == "darwin"* ]]; then
    # Install macvim
    brew install macvim --with-luajit --with-override-system-vim
fi

# Setup spf13vim
curl http://j.mp/spf13-vim3 -L -o - | sh

# Link dotfiles
files=("vimrc.local" "vimrc.bundles.local" "vimrc.before.local")

for file in ${files[*]}; do
    create_link ${1}/$file ~/.$file
done
