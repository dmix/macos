#!/usr/bin/env zsh

# ------------------------------------------------------------
# Debian Bootstrapping script
# ------------------------------------------------------------

echo "> Bootstrapping Debian..."

# Install Packages
# --------------------------------------------------------------------

# Updating APT
echo "> Updating APT..."
sudo apt-get update
sudo apt-get upgrade


# Install APT Packages
echo "> Installing APT packages..."
_packages=(
    golang
    git
    curl
    wget
    nginx
    rsync
    neovim
    postgresql
    libpq-dev
    gpg
    python3
    imagemagick
    nodejs
    tmux
)

function _install() {
    sudo apt-get install $1
}

for p in _packages; do
    _install "$p" 
done

# Go packages
echo "> Installing Go Packages..."
go get -u github.com/monochromegane/the_platinum_searcher/...

# Config
# --------------------------------------------------------------------

# NGINX
sudo systemctl enable nginx

# PostgreSQL
sudo systemctl enable postgresql
psql -d template1 -c "ALTER USER postgres WITH PASSWORD 'postgres';"
sudo systemctl start postgresql

# RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
rvm install ruby-2.4.1
gem install bundler rails pg

# Tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Linters
pip install proselint
npm install -g proselint

echo "> DONE"
