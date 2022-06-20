#!/usr/bin/env zsh

# ------------------------------------------------------------
# OSX
# ------------------------------------------------------------

echo "> Setting up OSX!"
echo ">"
echo "> -----------------------------------------------------"
echo "> DISABLE SIP PROTECTION SO TILING WM INSTALLS PROPERLY"
echo "> https://github.com/koekeishiya/yabai/wiki/Disabling-System-Integrity-Protection"
echo "> -----------------------------------------------------"
echo ">"

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
./macos-disable-agents.zsh
./macos-settings.zsh
./macos-bootstrap.zsh
./macos-programming.zsh
./macos-desktop.zsh

cd /usr/local/lib && sudo ln -s ../../lib/libSystem.B.dylib libgcc_s.10.4.dylib

brew cleanup
