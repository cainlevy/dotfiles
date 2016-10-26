#!/usr/bin/env bash

# TODO:
# install homebrew packages on Mac
# install .deb packages on Ubuntu
# install sublime packages

DOTFILES_ROOT=$(pwd)

install_dotfiles () {
  echo 'installing dotfiles'

  for src in $(find "$DOTFILES_ROOT" -name '*.symlink')
  do
    dst="$HOME/.$(basename "${src%.*}")"
    ln -sf "$src" "$dst"
  done
}

install_dotfiles
sublime/install.sh