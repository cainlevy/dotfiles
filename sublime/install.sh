#!/usr/bin/env bash

echo 'installing sublime'

if [[ "$OSTYPE" == "darwin"* ]]; then
  SUBLIME_PATH="$HOME/Library/Application Support/Sublime Text 3/Packages/User"
else
  # TODO: linux
  exit
fi

cd `dirname $0`

for file in $(ls *.sublime-settings)
do
  src="$PWD/$file"
  dst="$SUBLIME_PATH/$file"
  ln -sf "$src" "$dst"
done
