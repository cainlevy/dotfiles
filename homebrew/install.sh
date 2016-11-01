#!/usr/bin/env bash

if [[ "$OSTYPE" == "darwin"* ]]; then
  echo 'installing homebrew'

  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew bundle
fi
