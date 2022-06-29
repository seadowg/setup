#! /bin/bash

setup() {
  cp disable-animations.sh ~/workspace/collect
  cp enable-animations.sh ~/workspace/collect
  cp test-lab.sh ~/workspace/collect
  cp local_gitignore ~/workspace/collect/.local_gitignore
  cp envrc ~/workspace/collect/.envrc
  touch ~/workspace/collect/pr-notes.md

  pushd ~/workspace/collect
    git config --local core.excludesfile ~/workspace/collect/.local_gitignore
  popd

  brew bundle

  if [ ! -d ~/Checkman ]; then
    curl https://raw.githubusercontent.com/cppforlife/checkman/master/bin/install | bash -s
    rm ~/Checkman/example
    cp Open\ Data\ Kit ~/Checkman/Open\ Data\ Kit
  fi
}

if [ -d ~/workspace/collect ]; then
  setup
else
  git clone git@github.com:getodk/collect.git ~/workspace/collect
  setup
fi

echo ""
echo "Caveats:"
echo "* Checkman will need a Circle CI API key copied (from https://app.circleci.com/settings/user/tokens) in at ~/Checkman/Open\ Data\ Kit"
