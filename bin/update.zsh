#!/usr/bin/env zsh

source ~/zsh/src/logger.zsh

# ==============================================================================
# Update OS
# ==============================================================================

# Update functions
# -----------------------------------------------------------------------------
function update_xcode() {
  xcode-select --install
  softwareupdate --install -a
}

function update_debian() {
    sudo apt-get update
    sudo apt-get upgrade
    sudo apt dist-upgrade
    sudo apt-get autoclean
}

function update_macos() {
    brew update --all
    brew upgrade
    brew cleanup
    brew prune
    brew cask cleanup
    brew cask upgrade
}

function update_python2() {
    pip2 freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip2 install -U
}

function update_python3() {
    pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip3 install -U
}

function update_spacevim() {
    nvim -c 'nvim -c ":SPUpdate"'
    cd $HOME/.SpaceVim
    git pull --rebase origin master
    cd $HOME
}

function update_ruby() {
    gem update --system
    gem update
}

function update_node() {
    for package in $(npm -g outdated --parseable --depth=0 | cut -d: -f2)
    do
        sudo npm -g upgrade "$package"
    done
}

function update_zsh() {
    zplug update
    zplug clean
    brew install zsh --with-pcre --with-gdbm --with-unicode9 --HEAD
}

function update_rust() {
    rustup update
    rustup self update
}

function fix_permissions() {
  sudo chown -R $(whoami): /usr/local/
  sudo chown -R $(whoami): $HOME/*
  sudo chown -R $(whoami): $HOME/.*
}

# Execute
# -----------------------------------------------------------------------------

zlog-init "OS"
zlog-h1 "Updating OS"
if ((DEBIAN)); then
    zlog-cmd "Updating debian" update_debian
fi
if ((MACOS)); then
    zlog-cmd "Updating brew packages" update_macos
fi
zlog-cmd "Updating XCode" update_xcode
zlog-cmd "Updating Rust" update_rust
zlog-cmd "Updating Python2" update_python2
zlog-cmd "Updating Python3" update_python3
zlog-cmd "Updating SpaceVim" update_spacevim
zlog-cmd "Updating Rubygems" update_ruby
zlog-cmd "Updating Node" update_node
zlog-cmd "Updating ZSH" update_node
zlog-cmd "Fixing permissions" update_node
zlog-done
