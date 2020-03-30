#!/usr/bin/env bash

echo 'installing homebrew'

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew bundle

echo 'installing VS Code settings'

ln -sf ../vscode-settings.json ~/Library/Application\ Support/Code/User/settings.json
