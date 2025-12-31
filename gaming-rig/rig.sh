set -e

# Update repos
sudo apt update && sudo apt upgrade

# Install Curl
sudo apt install curl

# Install Steam
curl -O -L https://cdn.fastly.steamstatic.com/client/installer/steam.deb
sudo dpkg -i --skip-same-version steam.deb
rm steam.deb

# Install and configure MangoHud
sudo apt install mangohud
mkdir -p ~/.config/MangoHud/
echo -e "gpu_temp\ncpu_temp\nram\nvram\ntoggle_hud=F6\nfps_limit=60\n" > ~/.config/MangoHud/MangoHud.conf
if ! $(grep -q "MANGOHUD=1" /etc/environment); then
	sudo bash ri-c 'echo "MANGOHUD=1" >> /etc/environment'
fi

# Install Heroic Launcher (commented out until https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/issues/4917 is fixed)
# curl -O https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v2.18.1/Heroic-2.18.1-linux-amd64.deb
# sudo dpkg -i --skip-same-version Heroic-2.18.1-linux-amd64.deb

# Set power profile
sudo powerprofilesctl set performance