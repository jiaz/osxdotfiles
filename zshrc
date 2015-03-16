# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ys"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin"
# export MANPATH="/usr/local/man:$MANPATH"
export PATH=~/.rbenv/shims:/usr/local/bin:$PATH:$HOME/Workspace/tools/arcanist/bin:~/Workspace/tools/depot_tools

# virtualenvwrapper workon home folder
WORKON_HOME=$HOME/PyEnvs

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git ssh-agent virtualenv virtualenvwrapper zsh-syntax-highlighting)

# User configuration

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

eval "$(rbenv init -)"

export NVM_DIR="/Users/jiaji.zhou/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . $NVM_DIR/nvm.sh

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

# When you cd into a directory containing a .env, autoenv automagically activates the environment.
# source /usr/local/opt/autoenv/activate.sh
PATH=$PATH:$HOME/bin

alias ws="cd ~/Workspace"
alias wsc="cd ~/Workspace/concerto/"
alias mz="cd ~/Workspace/concerto/mozart"
alias tt="cd ~/Workspace/concerto/tut"
alias dl="cd ~/Downloads"
alias l="gls -pla --color=auto --group-directories-first"
alias redisstart='sudo launchctl start io.redis.redis-server'
alias redisstop='sudo launchctl stop io.redis.redis-server'
alias ngstart='sudo launchctl start homebrew.mxcl.nginx'
alias ngstop='sudo launchctl stop homebrew.mxcl.nginx'
alias gs="git status"
alias gd="git difftool"
alias gitcheck="git ls-files --error-unmatch"
alias jkserve="bundle exec jekyll serve"
alias genschema='node tools/iodocs/generate_schema.js --stage dev_unit_test all tools/iodocs/server/public/data/docs'
alias runiodocs='node tools/iodocs/server/app.js -c tools/iodocs/server/config.json'

nvm use 0.10
