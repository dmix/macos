#!/usr/bin/env zsh

# ------------------------------------------------------------
echo "> Installing neovim dependencies"

echo CA_CERTIFICATE=$(brew --prefix curl-ca-bundle)/share/ca-bundle.crt >> ~/.wgetrc

brew install pyenv pyenv-virtualenv
pyenv install 3.6.1
pyenv virtualenv 3.6.1 neovim3

brew install ninja libtool automake cmake pkg-config gettext curl
brew install curl-ca-bundle

pip install cmake neovim pynvim neovim-remote
pip install --user neovim

# ------------------------------------------------------------
echo "> Installing neovim from source"

brew uninstall neovim
cd ~/tmp && rm -rf neovim
cd ~/tmp && git clone https://github.com/neovim/neovim
cd ~/tmp/neovim && make
cd ~/tmp/neovim && sudo make install

# ------------------------------------------------------------
echo "> Installing paq.nvim"

git clone --depth=1 https://github.com/savq/paq-nvim.git "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/start/paq-nvim

# ------------------------------------------------------------
echo "> Installing neovim linters"

gem install bundler rubocop solargraph haml_lint gem-browse gem-ctags erb_lint
npx install-peerdeps eslint-config-airbnb-base
npm install -g eslint eslint-plugin-jasmine@latest eslint-plugin-vue@latest sass-lint stylelint proselint jsonlint
npm install -g typescript typescript-language-server vscode-langservers-extracted dockerfile-language-server-nodejs vscode-langservers-extracted prettier cspell markdownlint volar
brew install yamllint shellcheck tidy-html5 ctags checkmake
pip install solargraph-utils.py --user
pip install vim-vint
luarocks install luacheck

echo "Note: If you see 'stdio.h' file not found, try the following:"
echo "open /Library/Developer/CommandLineTools/Packages/macOS_SDK_headers_for_macOS_10.14.pkg"

sudo chown -R dmix:dmix /usr/local
