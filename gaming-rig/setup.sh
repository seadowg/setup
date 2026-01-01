set -e

wget -qO- https://www.seadowg.com/rig.sh | bash -s -- --streaming-host
cp sunshine.desktop ~/.config/autostart/sunshine.desktop
cp MoonDeckBuddy-settings.json ~/.config/moondeckbuddy/settings.json