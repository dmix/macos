#!/usr/bin/env zsh

brew install ninja libtool automake cmake pkg-config gettext curl
brew install curl-ca-bundle

echo CA_CERTIFICATE=$(brew --prefix curl-ca-bundle)/share/ca-bundle.crt >> ~/.wgetrc

echo "Note: If you see 'stdio.h' file not found, try the following:"
echo "open /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg"

pip3 install pynvim
pip3 install --upgrade pynvim
pip3 install neovim-remote
pip3 install --user neovim
pip3 install cmake neovim
cd ~/tmp && rm -rf neovim
cd ~/tmp && git clone https://github.com/neovim/neovim
cd ~/tmp/neovim && make
cd ~/tmp/neovim && sudo make install

sudo chown -R dmix:dmix /usr/local
