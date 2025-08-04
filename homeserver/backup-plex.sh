pushd ~/Library/Application\ Support/Plex\ Media\ Server/
  checkin backup
popd

rclone sync -P ~/Checkins dropbox:/Backups/Homeserver