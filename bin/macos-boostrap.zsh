#!/usr/bin/env zsh

# ------------------------------------------------------------
# OSX Bootstrapping script
# ------------------------------------------------------------

echo "> Bootstrapping OSX..."

# Core utils
brew install git \
\ curl
\ wget --with-iri
\ libtool
\ automake
\ autoconf
\ cmake
\ pkg-config
\ gettext
\ shared-mime-info
\ tmux
\ rust
\ ripgrep
\ fortune
\ cowsay
\ openssl
\ readline
\ sqlite3
\ xz
\ zlib
\ Pyqt5
\ zplug
\ gh
\ openssl@1.0.rb
\ gawk
\ ncurses
\ nvc
\ nc
\ reattach-to-user-namespace
\ simplecov
\ lynx
\ p7zip
\ pigz
\ pv
\ rename
\ speedtest_cli
\ ssh-copy-id
\ tree
\ webkit2png
\ zopfli
\ pkg-config libffi
\ pandoc
\ gnupg
\ m-cli
\ libxml2
\ libxslt
\ coreutils
\ moreutils
\ findutils
\ gnu-sed --with-default-names
\ bash-completion2
\ sqlite
\ mongo
\ redis
\ postgresql
\ terminal-notifier

# Install Kitty
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# goreplace - https://github.com/piranha/goreplace
go install github.com/piranha/goreplace

# massren - https://github.com/laurent22/massren
brew install laurent22/massren/massren

# renamer - https://github.com/75lb/renamer
sudo npm install -g renamer

# hack font
brew tap homebrew/cask
brew tap homebrew/cask-font
brew cask install font-hack
brew cask install font-noto-emoji
brew cask install font-noto-color-emoji
brew cask install font-noto-sans
sudo pip3 install unicodemoticon
brew install font-inconsolata

brew cask install unrarx

# cheat
pip3 install docopt pygments appdirs

# tmux
# -----------------------------------------------------------------------------
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# allows you to access OSx clipboard (pbcopy & pbpaste) through tmux

# Tmux
# -----------------------------------------------------------------------------
brew install tmux
pip install --user tmuxp
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# allows you to access OSx clipboard (pbcopy & pbpaste) through tmux
brew install reattach-to-user-namespace
pip3 install tmuxp

# Tiling wm (disable SIP)
# ------------------------------------------------------------
# https://github.com/koekeishiya/yabai/wiki/Disabling-System-Integrity-Protection
# https://github.com/koekeishiya/yabai/wiki/Installing-yabai-(from-HEAD)
brew install koekeishiya/formulae/skhd

brew install koekeishiya/formulae/yabai --HEAD
codesign -fs 'yabai-cert' $(which yabai)

sudo yabai --install-sa
sudo yabai --load-sa

brew services start yabai
brew services start skhd

# Useful stuff from dev-setup - https://github.com/donnemartin/dev-setup
# --------------------------------------------------------------

pip install glances
# Lxml and Libxslt
brew link libxml2 --force
brew link libxslt --force

brew install --cask --appdir="~/Applications" transmission
# # brew cask install --appdir="~/Applications" iterm2
# brew cask install --appdir="~/Applications" java
brew install --cask --appdir="~/Applications" xquartz
brew install --cask --appdir="/Applications" google-chrome-canary

brew cleanup

echo "> DONE"
echo "> ----"
