#!/usr/bin/env bash

command -v ne > /dev/null || sudo apt-get install ne
command -v tree > /dev/null || snap install tree
command -v http > /dev/null || snap install http

command -v yarn > /dev/null || (
  echo "installing yarn"

  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
  sudo apt-get install yarn
)

command -v rbenv > /dev/null || (
  echo "install rbenv and ruby-build"
  wget -q https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer -O- | bash
)

command -v diff-so-fancy > /dev/null || (
  echo "installing diff-so-fancy"

  wget -O ~/.local/bin/diff-so-fancy https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy
  chmod a+x ~/.local/bin/diff-so-fancy
)
