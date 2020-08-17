#!/usr/bin/env bash

set -euo pipefail
set -x

mkdir -p ~/bin
command -v curl > /dev/null || sudo apt-get install curl
command -v ne > /dev/null || sudo apt-get install ne
command -v tree > /dev/null || sudo snap install tree
command -v http > /dev/null || sudo snap install http

command -v yarn > /dev/null || (
  echo "installing yarn"

  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
  sudo apt-get update
  sudo apt-get install yarn
)

command -v rbenv > /dev/null || (
  echo "install rbenv and ruby-build"
  wget -q https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer -O- | bash
)

command -v diff-so-fancy > /dev/null || (
  echo "installing diff-so-fancy"

  wget -O ~/bin/diff-so-fancy https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy
  chmod a+x ~/bin/diff-so-fancy
)

echo 'installing vscode-settings'
mkdir -p ~/.config/Code/User
ln -sf "$PWD/vscode-settings.json" ~/.config/Code/User/settings.json
