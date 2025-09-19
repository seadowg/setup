set -e

# Install Steam
wget https://cdn.fastly.steamstatic.com/client/installer/steam.deb
sudo dpkg -i --skip-same-version steam.deb

# Install Sunshine
wget https://github.com/LizardByte/Sunshine/releases/download/v2025.628.4510/sunshine-ubuntu-24.04-amd64.deb
sudo dpkg -i --skip-same-version sunshine-ubuntu-24.04-amd64.deb
cp sunshine.desktop ~/.config/autostart/sunshine.desktop

# Install and configure MangoHud
sudo apt install mangohud
mkdir -p ~/.config/MangoHud/ && cp MangoHud.conf ~/.config/MangoHud/MangoHud.conf

# Install Heroic Launcher (commented out until https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/issues/4917 is fixed)
# wget https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v2.18.1/Heroic-2.18.1-linux-amd64.deb
# sudo dpkg -i --skip-same-version Heroic-2.18.1-linux-amd64.deb