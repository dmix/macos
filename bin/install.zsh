#!/usr/bin/env zsh

# ------------------------------------------------------------
# dmix/ZSH Installer
# ------------------------------------------------------------

[[ -z "$ZSH_DIR" ]] && local ZSH_DIR=$HOME/zsh/src
[[ -z "$TMP_DIR" ]] && local TMP_DIR=$HOME/tmp

# Link dotfiles
# ------------------------------------------------------------
echo '> Linking home dir dotfiles'
ln -sf $ZSH_DIR/init.zsh   $HOME/.zshrc
ln -sf $ZSH_DIR/config.zsh $HOME/.exports
ln -sf $ZSH_DIR/login.zsh  $HOME/.zlogin

# Install homebrew packages
# ------------------------------------------------------------
if ((MACOS)); then
    echo '> Updating homebrew'
    brew update
    brew upgrade

    if ! installed "git"; then
        echo '> Installing git'
        brew install git
    fi

    if ! installed "tmux"; then
        echo '> Installing tmux'
        brew install tmux
    fi

    if [[ ! -x "/usr/local/bin/zsh" ]]; then
        echo '> Installing zsh'
        brew install zsh --HEAD
        brew link zsh
        sudo bash -c 'echo "/usr/local/bin/zsh" >> /etc/shells'
    fi
fi

if ((DEBIAN)); then
fi

$HOME/macos/bin/install-neovim.zsh

# Install ZGEN
# ------------------------------------------------------------
if [[ ! -d $HOME/zsh/vendor/zplug]]; then
    source $ZSH_DIR/config.zsh
    echo '> Installing zplug'
    mkdir -p $HOME/zsh/vendor
    git clone https://github.com/zplug/zplug $ZPLUG_HOME
    source $ZPLUG_HOME/init.zsh
    zplug install
    zplug update
    zplug clean
fi

# Link code dirs
# ------------------------------------------------------------
ln -sf $HOME/zsh                     $CODE_DIR/zsh
ln -sf $HOME/zsh/plugins/zsh-aliases $CODE_DIR/zsh-aliases

echo '> DONE'
echo '> ----'
