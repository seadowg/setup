#! /bin/bash

if [ -d ~/workspace/collect ]; then
  cp -n disable-animations.sh ~/workspace/collect
  cp -n enable-animations.sh ~/workspace/collect
  cp -n test-lab.sh ~/workspace/collect
  cp -n .local_gitignore ~/workspace/collect/.local_gitignore
  touch ~/workspace/collect/pr-notes.md

  pushd ~/workspace/collect
    git config --local core.excludesfile ~/workspace/collect/.local_gitignore
  popd

  brew bundle
fi
