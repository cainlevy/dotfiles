#!/usr/bin/env bash

command -v brew > /dev/null || (
	echo 'installing homebrew'

	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
	brew bundle
)

echo 'installing VS Code settings'
mkdir -p ~/Library/Application\ Support/Code/User
ln -sf "$PWD/vscode-settings.json" ~/Library/Application\ Support/Code/User/settings.json
