#!/usr/bin/env zsh

#
# Use asdf to manage various lannguage depdnedencies
# https://github.com/asdf-vm/asdf
#

brew install asdf

chmod +x /Users/dmix/.asdf/asdf.sh
chmod +x /Users/dmix/.asdf/completions/asdf.*

cp -f ../.tool-versions ~/.tool-versions

asdf plugin-add opam                          https://github.com/asdf-community/asdf-opam.git
asdf plugin-add imagemagick                   https://github.com/mangalakader/asdf-imagemagick.git
asdf plugin-add golang                        https://github.com/kennyp/asdf-golang.git
asdf plugin-add exa                           https://github.com/nyrst/asdf-exa.git
asdf plugin-add stack                         https://github.com/sestrella/asdf-stack.git
asdf plugin-add tmux                          https://github.com/aphecetche/asdf-tmux.git
asdf plugin-add rust                          https://github.com/code-lever/asdf-rust.git
asdf plugin-add ripgrep                       https://gitlab.com/wt0f/asdf-ripgrep.git
asdf plugin-add pnpm                          https://github.com/jonathanmorley/asdf-pnpm.git
asdf plugin-add ocaml                         https://github.com/asdf-community/asdf-ocaml.git
asdf plugin-add java                          https://github.com/halcyon/asdf-java.git
asdf plugin-add lua                           https://github.com/Stratus3D/asdf-lua.git
asdf plugin-add make                          https://github.com/yacchi/asdf-make.git
asdf plugin-add julia                         https://github.com/rkyleg/asdf-julia.git
asdf plugin-add haskell                       https://github.com/vic/asdf-haskell.git
asdf plugin-add github-cli                    https://github.com/bartlomiejdanek/asdf-github-cli.git
asdf plugin-add deno                          https://github.com/asdf-community/asdf-deno.git
asdf plugin-add bitwarden                     https://github.com/vixus0/asdf-bitwarden.git
asdf plugin-add elixir                        https://github.com/asdf-vm/asdf-elixir.git
asdf plugin-add erlang                        https://github.com/asdf-vm/asdf-erlang.git
asdf plugin-add lua
asdf plugin-add ruby
asdf plugin-add bundler
asdf plugin-add nodejs
asdf plugin-add yarn
asdf plugin-add postgres
asdf plugin-add redis

asdf install

asdf global nodejs latest
asdf global ruby latest
asdf global bitwarden latest
asdf global bundler latest
asdf global deno latest
asdf global elixir latest
asdf global erlang latest
asdf global exa latest
asdf global github-cli latest
asdf global golang latest
asdf global haskell latest
asdf global imagemagick latest
asdf global java latest
asdf global julia latest
asdf global lua latest
asdf global make latest
asdf global ocaml latest
asdf global opam latest
asdf global pnpm latest
asdf global postgres latest
asdf global python latest
asdf global redis latest
asdf global ripgrep latest
asdf global rust latest
asdf global sqlite latest
asdf global stack latest
asdf global tmux latest
asdf global yarn latest

asdf plugin-list
asdf list

echo -e "\n. $(brew --prefix asdf)/libexec/asdf.sh" >> ${ZDOTDIR:-~}/.zshrc






# asdf plugin-add bat                           https://gitlab.com/wt0f/asdf-bat.git
# asdf plugin-add bombardier                    https://github.com/NeoHsu/asdf-bombardier.git
# asdf plugin-add bundler                       https://github.com/jonathanmorley/asdf-bundler.git
# asdf plugin-add ccache                        https://github.com/asdf-community/asdf-ccache.git
# asdf plugin-add clojure                       https://github.com/halcyon/asdf-clojure.git
# asdf plugin-add cmake                         https://github.com/srivathsanmurali/asdf-cmake.git
# asdf plugin-add dockle                        https://github.com/mathew-fleisch/asdf-dockle.git
# asdf plugin-add dotenv-linter                 https://github.com/wesleimp/asdf-dotenv-linter.git
# asdf plugin-add editorconfig-checker          https://github.com/gabitchov/asdf-editorconfig-checker.git
# asdf plugin-add ghq                           https://github.com/kajisha/asdf-ghq.git
# asdf plugin-add git                           https://gitlab.com/jcaigitlab/asdf-git.git
# asdf plugin-add gleam                         https://github.com/vic/asdf-gleam.git
# asdf plugin-add jq                            https://github.com/azmcode/asdf-jq.git
# asdf plugin-add lazygit                       https://github.com/nklmilojevic/asdf-lazygit.git
# asdf plugin-add leiningen                     https://github.com/miorimmax/asdf-lein.git
# asdf plugin-add neovim                        https://github.com/richin13/asdf-neovim.git
# asdf plugin-add nim                           https://github.com/asdf-community/asdf-nim.git
# asdf plugin-add nodejs                        https://github.com/asdf-vm/asdf-nodejs.git
# asdf plugin-add postgres                      https://github.com/smashedtoatoms/asdf-postgres.git
# asdf plugin-add python                        https://github.com/danhper/asdf-python.git
# asdf plugin-add redis                         https://github.com/smashedtoatoms/asdf-redis.git
# asdf plugin-add ruby                          https://github.com/asdf-vm/asdf-ruby.git
# asdf plugin-add sqlite                        https://github.com/cLupus/asdf-sqlite.git
# asdf plugin-add yarn                          https://github.com/twuni/asdf-yarn.git


# asdf global neovim latest
# asdf global nodejs latest
# asdf global ruby latest
# asdf global bat lqtest
# asdf global bitwarden latest
# asdf global bombardier latest
# asdf global bundler latest
# asdf global ccache latest
# asdf global clojure latest
# asdf global cmake latest
# asdf global deno latest
# asdf global dockle latest
# asdf global dotenv-linter latest
# asdf global editorconfig-checker latest
# asdf global elixir latest
# asdf global erlang latest
# asdf global exa latest
# asdf global ghq latest
# asdf global git latest
# asdf global github-cli latest
# asdf global gleam latest
# asdf global golang latest
# asdf global haskell latest
# asdf global imagemagick latest
# asdf global java latest
# asdf global jq latest
# asdf global julia latest
# asdf global lazygit latest
# asdf global leiningen latest
# asdf global lua latest
# asdf global make latest
# asdf global nim latest
# asdf global ocaml latest
# asdf global opam latest
# asdf global pnpm latest
# asdf global postgres latest
# asdf global python latest
# asdf global redis latest
# asdf global ripgrep latest
# asdf global rust latest
# asdf global sqlite latest
# asdf global stack latest
# asdf global tmux latest
# asdf global yarn latest

