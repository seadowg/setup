pushd ~/Library/Application\ Support/Plex\ Media\ Server/
  checkin backup
popd

rclone sync -P ~/Mounts/Music dropbox:/Media/Music
rclone sync -P ~/Checkins dropbox:/Backups/Homeserver
