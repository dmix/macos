#!/usr/bin/env zsh

# ------------------------------------------------------------
# OSX Bootstrapping script
# ------------------------------------------------------------

echo "> Bootstrapping OSX..."

# Core utils
brew install \
git
curl
wget --with-iri
libtool
automake
autoconf
cmake
pkg-config
gettext
shared-mime-info
tmux
rust
ripgrep
fortune
cowsay
openssl
readline
sqlite3
xz
zlib
Pyqt5
zplug
gh
openssl@1.0.rb
gawk
ncurses
nvc
nc
reattach-to-user-namespace
simplecov
lynx
p7zip
pigz
pv
rename
speedtest_cli
ssh-copy-id
tree
webkit2png
zopfli
pkg-config libffi
pandoc
gnupg
m-cli
libxml2
libxslt
coreutils
moreutils
findutils
gnu-sed --with-default-names
bash-completion2
sqlite
mongo
redis
postgresql
terminal-notifier
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
brew cask install font-eymbola
brew cask install font-noto-emoji
brew cask install font-noto-color-emoji
brew cask install font-noto-sans
sudo pip3 install qdarkstyle
sudo pip3 install unicodemoticon

brew cask install unrarx

# cheat
pip3 install docopt pygments appdirs

# tmux
# -----------------------------------------------------------------------------
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# allows you to access OSx clipboard (pbcopy & pbpaste) through tmux

# Tmux
# -----------------------------------------------------------------------------
pip3 install tmuxp

# Tiling wm
# ------------------------------------------------------------
# brew cask install phoenix
# brew tap crisidev/homebrew-chunkwm
# brew install --HEAD chunkwm
# brew install koekeishiya/formulae/khd
# cp /usr/local/opt/chunkwm/share/examples/chunkwmrc ~/.chunkwmrc
# cp /usr/local/opt/chunkwm/share/examples/khdrc ~/.khdrc
# ln -sf /usr/local/opt/chunkwm/share/chunkwm_plugins ~/.chunkwm_plugins
# brew services start crisidev/chunkwm/chunkwm

# Karabiner
# ------------------------------------------------------------

# brew install caskroom/cask/karabiner-elements

# Hammerspoon
# ------------------------------------------------------------

# brew cask install caskroom/cask/hammerspoon

# Useful stuff from dev-setup - https://github.com/donnemartin/dev-setup
# --------------------------------------------------------------

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'

brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php55 --with-gmp

pip install glances
# Lxml and Libxslt
brew link libxml2 --force
brew link libxslt --force

# brew cask install --appdir="~/Applications" transmission
# # brew cask install --appdir="~/Applications" iterm2
# brew cask install --appdir="~/Applications" java
# brew cask install --appdir="~/Applications" xquartz
# brew cask install --appdir="/Applications" google-chrome-dev

brew cleanup

echo "> DONE"
echo "> ----"
