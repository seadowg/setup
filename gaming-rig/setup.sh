set -e

# Install Steam
wget https://cdn.fastly.steamstatic.com/client/installer/steam.deb
sudo dpkg -i steam.deb

# Install Sunshine
wget https://github.com/LizardByte/Sunshine/releases/download/v2025.628.4510/sunshine-ubuntu-24.04-amd64.deb
sudo dpkg -i .//sunshine-ubuntu-24.04-amd64.deb

# Install and configure MangoHud
sudo apt install mangohud
mkdir -p ~/.config/MangoHud/ && cp MangoHud.conf ~/.config/MangoHud/MangoHud.conf

# Install Heroic launcher for non-steam games
wget https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v2.18.1/Heroic-2.18.1-linux-amd64.deb
sudo dpkg -i Heroic-2.18.1-linux-amd64.deb