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

# Install beats
printf "Starting Docker for Mac";
open -a Docker;
while [[ -z "$(! docker stats --no-stream 2> /dev/null)" ]];
  do printf ".";
  sleep 1
done
echo "";


pushd beets
  docker build -t seadowg/beets .
popd
cp -a beet /usr/local/bin/

# Configure git
git config --global user.name "Callum Stott"
git config --global user.email "callum@seadowg.com"
git config --global commit.gpgsign true