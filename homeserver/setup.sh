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

brew bundle

cp start-icecast.sh ~
cp sync-music.sh ~
