set -e

# Install Curl
sudo apt install curl

# Install Steam
curl -O https://cdn.fastly.steamstatic.com/client/installer/steam.deb
sudo dpkg -i --skip-same-version steam.deb
rm steam.deb

# Install Sunshine
curl -O https://github.com/LizardByte/Sunshine/releases/download/v2025.924.154138/sunshine-ubuntu-24.04-amd64.deb
sudo dpkg -i --skip-same-version sunshine-ubuntu-24.04-amd64.deb
rm sunshine-ubuntu-24.04-amd64.deb
cp sunshine.desktop ~/.config/autostart/sunshine.desktop

# Install and configure MangoHud
sudo apt install mangohud
mkdir -p ~/.config/MangoHud/ && cp MangoHud.conf ~/.config/MangoHud/MangoHud.conf
if !$(grep -q "MANGOHUD=1" /etc/environment); then
    sudo -c 'echo "MANGOHUD=1" >> /etc/environment'
fi

# Install Heroic Launcher (commented out until https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/issues/4917 is fixed)
# curl -O https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v2.18.1/Heroic-2.18.1-linux-amd64.deb
# sudo dpkg -i --skip-same-version Heroic-2.18.1-linux-amd64.deb

# Install displayconfig-mutter (for changing Sunshine stream resolutions)
curl "https://github.com/eaglesemanation/displayconfig-mutter/releases/latest/download/displayconfig-mutter-$(uname -m)" -L -o displayconfig-mutter \
  && sudo install -Dm0755 displayconfig-mutter /usr/local/bin/displayconfig-mutter \
  && rm displayconfig-mutter

# Install MoonDeckBuddy
rm MoonDeckBuddy-1.9.1-x86_64.AppImage
curl -O https://github.com/FrogTheFrog/moondeck-buddy/releases/download/v1.9.1/MoonDeckBuddy-1.9.1-x86_64.AppImage
chmod +x MoonDeckBuddy-1.9.1-x86_64.AppImage
cp MoonDeckBuddy-settings.json ~/.config/moondeckbuddy/settings.json