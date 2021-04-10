#! /bin/bash

# Install brew
if ! command -v brew &> /dev/null
then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

brew bundle

# Install beets
rm '/usr/local/bin/pip3'
brew link python@3.7 --force
if ! command -v beet &> /dev/null
then
  python3 -m pip install --user beets
  python3 -m pip install --user beets-alternatives
fi

cp beets-config.yaml ~/.config/beets/config.yaml

# Setup bash
chsh -s /bin/bash
