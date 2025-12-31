set -e

./rig.sh

# Install Sunshine
curl -O -L https://github.com/LizardByte/Sunshine/releases/download/v2025.924.154138/sunshine-ubuntu-24.04-amd64.deb
sudo dpkg -i --skip-same-version sunshine-ubuntu-24.04-amd64.deb
rm sunshine-ubuntu-24.04-amd64.deb
cp sunshine.desktop ~/.config/autostart/sunshine.desktop

# Install displayconfig-mutter (for changing Sunshine stream resolutions)
curl "https://github.com/eaglesemanation/displayconfig-mutter/releases/latest/download/displayconfig-mutter-$(uname -m)" -L -o displayconfig-mutter \
  && sudo install -Dm0755 displayconfig-mutter /usr/local/bin/displayconfig-mutter \
  && rm displayconfig-mutter

# Install MoonDeckBuddy
rm MoonDeckBuddy-1.9.1-x86_64.AppImage
curl -O -L https://github.com/FrogTheFrog/moondeck-buddy/releases/download/v1.9.1/MoonDeckBuddy-1.9.1-x86_64.AppImage
chmod +x MoonDeckBuddy-1.9.1-x86_64.AppImage
cp MoonDeckBuddy-settings.json ~/.config/moondeckbuddy/settings.json