#!/usr/bin/env sh

. ../func.sh

# Install zsh
brew install zsh

sudo -v
sudo_append_if_missing '/usr/local/bin/zsh' /etc/shells
chsh -s /usr/local/bin/zsh

# Install oh my zsh
# sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Link zshrc
create_link ${1}/zprezto/ ~/.zprezto
create_link ${1}/zprezto/runcoms/zshrc ~/.zshrc
create_link ${1}/zprezto/runcoms/zshenv ~/.zshenv
create_link ${1}/zprezto/runcoms/zlogin ~/.zlogin
create_link ${1}/zprezto/runcoms/zlogout ~/.zlogout
create_link ${1}/zprezto/runcoms/zpreztorc ~/.zpreztorc
create_link ${1}/zprezto/runcoms/zprofile ~/.zprofile
