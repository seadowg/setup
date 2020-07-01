#! /bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew bundle

# Install beets
pip3 install --user beets

# Setup bash
chsh -s /bin/bash
