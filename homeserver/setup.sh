# Install brew
if ! command -v brew &> /dev/null
then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

brew bundle

# Install beats
# printf "Starting Docker for Mac";
# open -a Docker;
# while [[ -z "$(! docker stats --no-stream 2> /dev/null)" ]];
  # do printf ".";
  # sleep 1
# done
# echo "";


pushd beets-docker
  docker build -t seadowg/beets .
popd

cp beet ~

# Setup backups
cp checkin ~/.checkin

# Copy scripts
cp start.sh ~
cp backup-music.sh ~
cp restart-roon.sh ~

# Copy configs
mkdir -p ~/.config/navidrome
mkdir -p ~/.config/navidrome/backups
cp navidrome.toml ~/.config/navidrome
mkdir -p ~/.config/sendspin
cp sendspin-settings-daemon.json ~/.config/sendspin/settings-daemon.json

# Setup services
cp navidrome.plist ~/Library/LaunchAgents/
launchctl unload ~/Library/LaunchAgents/navidrome.plist
launchctl load ~/Library/LaunchAgents/navidrome.plist

cp sendspin.plist ~/Library/LaunchAgents/
launchctl stop sendspin
launchctl unload ~/Library/LaunchAgents/sendspin.plist
launchctl load ~/Library/LaunchAgents/sendspin.plist