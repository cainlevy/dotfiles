#!/usr/bin/env bash

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
homebrew/install.sh
