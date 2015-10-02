#!/bin/sh
set -e

# TODO: setup brew things

# TODO: setup ohmyzsh

# setup spf13vim
curl http://j.mp/spf13-vim3 -L -o - | sh

files=("vimrc.local" "vimrc.bundles.local" "vimrc.before.local" "zshrc" "ackrc")

for file in ${files[*]}; do
    [ -L ~/.${file} ] && unlink ~/.${file}
    [ -e ~/.${file} ] && mv ~/.${file} ~/.${file}.bak
done

for file in ${files[*]}; do
    echo "linking $file"
    ln -s `pwd`/$file ~/.$file
done
