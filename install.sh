#!/usr/bin/env bash

# TODO:
# install homebrew packages on Mac
# install .deb packages on Ubuntu
# install sublime packages & settings

DOTFILES_ROOT=$(pwd)

install_dotfiles () {
  echo 'installing dotfiles'

  for src in $(find "$DOTFILES_ROOT" -name '*.symlink')
  do
    dst="$HOME/.$(basename "${src%.*}")"
    ln -s "$src" "$dst"
  done
}

install_dotfiles
