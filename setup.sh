#! /bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew bundle

# Install beets
rm '/usr/local/bin/pip3'
brew link python@3.7 --force
python3 -m pip install --user beets

# Setup bash
chsh -s /bin/bash
