#!/usr/bin/env zsh
#
# ------------------------------------------------------------
# OSX Programming Libraries
# ------------------------------------------------------------

zlog "> Installing OSX programming libraries..."


# Auth with sudo
# -----------------------------------------------------------------------------
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Build tools
# -----------------------------------------------------------------------------

# brew install \
#     node \
#     pyen \
#     golang \
#     imagemagick --with-webp \
#     rhino \
#     heroku-toolbelt

# heroku update

# Ruby
# -----------------------------------------------------------------------------

if [[ -d $HOME/.rvm ]]; then
    zlog '> Installing RVM'
    gpg --keyserver hkp://keys.gnupg.net \
	--recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
    curl -sSL https://get.rvm.io
    rvm install ruby-2.6.9
fi


# Languages + Tooling
# -----------------------------------------------------------------------------

gem install \
    rails \
    rubocop \
    bundler \
    rcodetools \
    fastri \
    pg \
    nokogiri \
    pry \
    cabal-install \
    go \
    python \
    elixir \
    erlang \
    haskell-platform \
    lua

ruby -ropenssl -e "p OpenSSL::X509::DEFAULT_CERT_FILE"

# Rust
# -----------------------------------------------------------------------------

# brew install rust
# rustup https://www.rustup.rs/
# curl https://sh.rustup.rs -sSf | sh
rustup completions zsh > ~/zsh/src/completions/_rustup
cargo install racer

# Node
# -----------------------------------------------------------------------------

# brew link node
# brew install yarn
npm install -g brunch
# npm install -g elm-oracle

# Typescript
# -----------------------------------------------------------------------------

npm install -g typescript typings
typings init
typings install github:mafredri/phoenix-typings --global --save

# Databases
# -----------------------------------------------------------------------------

brew services start postgresql
createuser postgres --createdb

# Linters
# -----------------------------------------------------------------------------

pip3 install yamllint \
             proselint

zlog "> DONE"
zlog "> ----"
