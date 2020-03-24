#! /bin/bash

set -e

if [ -d ~/workspace/collect ]; then
  cp disable-animations.sh ~/workspace/collect
  cp enable-animations.sh ~/workspace/collect
  cp test-lab.sh ~/workspace/collect
  cp .local_gitignore ~/workspace/collect/.local_gitignore
  touch ~/workspace/collect/pr-notes.md

  pushd ~/workspace/collect
    git config --local core.excludesfile ~/workspace/collect/.local_gitignore
  popd

  brew bundle

  if [ ! -d ~/Checkman ]; then
    \curl https://raw.githubusercontent.com/cppforlife/checkman/master/bin/install | bash -s
  fi

  cp Open\ Data\ Kit ~/Checkman/Open\ Data\ Kit
fi
