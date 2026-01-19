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
pushd ~/Library/Application\ Support/Plex\ Media\ Server/
  checkin init plex-server
popd

# Copy scripts
cp start.sh ~
cp backup-music.sh ~
cp restart-roon.sh ~
cp backup-plex.sh ~

# Copy configs
mkdir -p ~/.config/navidrome
cp navidrome.toml ~/.config/navidrome

# Setup services
cp navidrome.plist ~/Library/LaunchAgents/
launchctl load ~/Library/LaunchAgents/navidrome.plist