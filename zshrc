# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="ys"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

export PATH="$HOME/bin:~/.rbenv/shims:/usr/local/bin:$PATH"

# virtualenvwrapper workon home folder
WORKON_HOME=$HOME/PyEnvs

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git ssh-agent virtualenv virtualenvwrapper zsh-syntax-highlighting)

# User configuration

source $ZSH/oh-my-zsh.sh

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export EDITOR='vi'

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

alias ws="cd ~/Workspace"
alias dl="cd ~/Downloads"
alias l="ls -lha"
alias redisstart='sudo launchctl start io.redis.redis-server'
alias redisstop='sudo launchctl stop io.redis.redis-server'
alias ngstart='sudo launchctl start homebrew.mxcl.nginx'
alias ngstop='sudo launchctl stop homebrew.mxcl.nginx'
alias gs="git status"
alias gd="git difftool"
alias gitcheck="git ls-files --error-unmatch"
alias jkserve="bundle exec jekyll serve"
alias emacs="/usr/local/cellar/emacs/24.5/emacs.app/contents/macos/emacs -nw"
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias vi="/Applications/MacVim.app/Contents/MacOS/Vim"

############
# Ruby Env #
############

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

##############
# Python Env #
##############

#### from: http://hackercodex.com/guide/python-development-environment-on-mac-osx/
# cache pip-installed packages to avoid re-downloading
# This is not needed anymore: export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache
# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true
# Perfect! But once that option is set, how do we install or upgrade a global package?
syspip(){
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}
# If in the future we want to upgrade our global packages, the above function enables us to do so via:
# syspip install --upgrade pip setuptools virtualenv

############
# Node Env #
############

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . $NVM_DIR/nvm.sh

nvm use 0.10

[ -e ~/.zshrc.local ] && source ~/.zshrc.local
