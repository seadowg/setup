#! /bin/bash

# Install brew
if ! command -v brew &> /dev/null
then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

cp bash_profile ~/.bash_profile
source ~/.bash_profile

brew bundle

pip3 install --user beets
cp beets-config.yaml ~/.config/beets/config.yaml

# Setup bash
if [ $(echo "$SHELL") != "/bin/bash" ]
then
  chsh -s /bin/bash
fi
