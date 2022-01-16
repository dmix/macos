#!/usr/bin/env zsh

# ------------------------------------------------------------
# OSX
# ------------------------------------------------------------

echo "> Setting up OSX!"

# Sudo
# ------------------------------------------------------------

sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew
# ------------------------------------------------------------

if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install XCode
# ------------------------------------------------------------

sudo softwareupdate -iva
xcode-select --install

# Update Homebrew
# ------------------------------------------------------------

brew update
brew upgrade --all

# Run scripts
# ------------------------------------------------------------

./asdf.zsh
./install-neovim.zsh
./disable-macos-agents.zsh
./osx.bootstrap.zsh
./osx.programming.zsh
./osx.settings.zsh
./osx.desktop.zsh

cd /usr/local/lib && sudo ln -s ../../lib/libSystem.B.dylib libgcc_s.10.4.dylib

brew cleanup
