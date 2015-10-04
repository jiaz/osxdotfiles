#!/usr/bin/env sh

function create_link {
    [ -L ${2} ] && unlink ${2}
    [ -e ${2} ] && mv ${2} ${2}.bak
    echo "linking ${1}"
    ln -s ${1} ${2}
}

function copy_replace {
    cp -rf ${1} ${2}
}

function run_setup {
    echo "Setting up ${1}..."
    pushd_ $DIR/${1}
    sh ./setup.sh `pwd`
    popd_
    echo "Done."
}

function pushd_ {
    pushd ${1} > /dev/null
}

function popd_ {
    popd > /dev/null
}

function checkout_master_and_pull_latest {
    [ ! -d ${1} ] && git clone ${2} ${1}
    pushd_ ${1}
    git checkout --quiet master
    git pull --quiet --rebase
    popd_
}

function append_if_missing {
    [ -z $( grep ${1} ${2} ) ] && echo "${1}" >> ${2}
}

function sudo_append_if_missing {
    sudo sh <<EOF
[ -z $( grep ${1} ${2} ) ] && echo "${1}" >> ${2}
EOF
}
