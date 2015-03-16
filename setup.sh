#!/bin/sh

# TODO: setup brew things

# TODO: setup ohmyzsh

# setup spf13vim
if [ ! -d ~/.spf13-vim-3 ]; then
    curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh && rm spf13-vim.sh
fi


files=("gitconfig" "vimrc.local" "zshenv" "zshrc")

for file in ${files[*]}; do
    [ -L ~/.${file} ] && unlink ~/.${file}
    [ -e ~/.${file} ] && echo ".${file} already exists, please rename or delete it." && exit
done

for file in ${files[*]}; do
    [ -L ~/.${file} ] && unlink ~/.${file}
    echo "linking $file"
    ln -s `pwd`/$file ~/.$file
done
