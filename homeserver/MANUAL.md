1. Connect storage and symlink videos for Plex:
	```bash
	ln -s <videos on storage> ~/Mounts/Videos
	```
1. Add `~/Mounts/Videos` as folder to Videos library in Plex
1. Download music with `./download-music.sh`
2. Run `./start.sh`
4. Update icecast config (`/opt/homebrew/etc/icecast.xml`) `admin-password` (in 1Password)
5. Update icecast config (`/opt/homebrew/etc/icecast.xml`) `source-password` (in 1Password)
6. Setup Butt to stream MP3 320kpbs (FLAC isn't Sonos compatible) to `localhost`, port `8000` with the source password above, update song name to "Turntable" and start
7. Restore Home Assistant backup (in Dropbox)
8. Add Music Assistant to Home Assistant: https://www.music-assistant.io/installation/ and configure:
 - Add Navidrome (OpenSubSonic), Tidal, Sonos, Chromecast and Subsonic Scrobbler providers
 - Add Sonos and Chromecast providers
 - Navidrome needs "Force Player Seek" enabled
