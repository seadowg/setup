# Install brew
if ! command -v brew &> /dev/null
then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

brew bundle

# Install beats
printf "Starting Docker for Mac";
open -a Docker;
while [[ -z "$(! docker stats --no-stream 2> /dev/null)" ]];
  do printf ".";
  sleep 1
done
echo "";


pushd beets-docker
  docker build -t seadowg/beets .
popd

cp beet ~
cp start.sh ~
cp backup-music.sh ~
