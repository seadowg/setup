#! /bin/bash

# Setup bash
if [ $(echo "$SHELL") != "/bin/bash" ]
then
  chsh -s /bin/bash
fi

# Install brew
if ! command -v brew &> /dev/null
then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

cp bash_profile ~/.bash_profile
source ~/.bash_profile

brew bundle

# Configure git
git config --global user.name "Callum Stott"
git config --global user.email "callum@seadowg.com"
git config --global commit.gpgsign true

# Copy scripts
cp copy-to-nexus /usr/local/bin/
cp backup-books.sh /usr/local/bin/backup-books
