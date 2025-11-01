set -e

# Install Steam
wget https://cdn.fastly.steamstatic.com/client/installer/steam.deb
sudo dpkg -i --skip-same-version steam.deb
rm steam.deb

# Install Sunshine
wget https://github.com/LizardByte/Sunshine/releases/download/v2025.628.4510/sunshine-ubuntu-24.04-amd64.deb
sudo dpkg -i --skip-same-version sunshine-ubuntu-24.04-amd64.deb
cp sunshine.desktop ~/.config/autostart/sunshine.desktop
rm sunshine-ubuntu-24.04-amd64.deb

# Install and configure MangoHud
sudo apt install mangohud
mkdir -p ~/.config/MangoHud/ && cp MangoHud.conf ~/.config/MangoHud/MangoHud.conf

# Install Heroic Launcher (commented out until https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/issues/4917 is fixed)
# wget https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v2.18.1/Heroic-2.18.1-linux-amd64.deb
# sudo dpkg -i --skip-same-version Heroic-2.18.1-linux-amd64.deb

# Install displayconfig-mutter (for changing Sunshine stream resolutions)
sudo apt install curl
curl "https://github.com/eaglesemanation/displayconfig-mutter/releases/latest/download/displayconfig-mutter-$(uname -m)" -L -o displayconfig-mutter \
  && sudo install -Dm0755 displayconfig-mutter /usr/local/bin/displayconfig-mutter \
  && rm displayconfig-mutter

# Install MoonDeckBuddy
wget https://github.com/FrogTheFrog/moondeck-buddy/releases/download/v1.9.1/MoonDeckBuddy-1.9.1-x86_64.AppImage
chmod +x MoonDeckBuddy-1.9.1-x86_64.AppImage
cp MooDeckBuddy-settings.json ~/.config/settings.json