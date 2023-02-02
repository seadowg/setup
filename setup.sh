#! /bin/bash

# Install brew
if ! command -v brew &> /dev/null
then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

cp bash_profile ~/.bash_profile
source ~/.bash_profile

brew bundle

# Setup bash
if [ $(echo "$SHELL") != "/bin/bash" ]
then
  chsh -s /bin/bash
fi

# Configure git
git config --global user.name "Callum Stott"
git config --global user.email "callum@seadowg.com"

# Install beets
if ! command -v beet &> /dev/null
then
  pip3 install --user beets
fi
cp beets-config.yaml ~/.config/beets/config.yaml