#!/usr/bin/env zsh
#
# ------------------------------------------------------------
# OSX Programming Libraries
# ------------------------------------------------------------

# USE ASDF INSTEAD
#
zlog "> Installing OSX programming libraries..."


# Auth with sudo
# -----------------------------------------------------------------------------
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

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
# npm install -g brunch
# npm install -g elm-oracle

# Typescript
# -----------------------------------------------------------------------------

npm install -g typescript

# Databases
# -----------------------------------------------------------------------------

# brew services start redis
# brew services start postgresql
# createuser postgres --createdb
# brew cask install postico
# createuser postgres --createdb

# Linters
# -----------------------------------------------------------------------------
#
# pip3 install yamllint \
#              proselint

zlog "> DONE"
zlog "> ----"
