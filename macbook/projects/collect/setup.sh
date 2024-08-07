#! /bin/bash

setup() {
  cp disable-animations.sh ~/workspace/collect
  cp enable-animations.sh ~/workspace/collect
  cp local_gitignore ~/workspace/collect/.local_gitignore
  cp envrc ~/workspace/collect/.envrc
  touch ~/workspace/collect/pr-notes.md
  cp kill-emulator.sh ~/workspace/collect
  cp decode-qr.sh ~/workspace/collect

  pushd ~/workspace/collect
    git config --local core.excludesfile ~/workspace/collect/.local_gitignore
  popd

  brew bundle
}

if [ -d ~/workspace/collect ]; then
  setup
else
  git clone git@github.com:seadowg/collect.git ~/workspace/collect
  setup
fi
