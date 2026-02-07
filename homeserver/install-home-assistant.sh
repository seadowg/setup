set -e

# Download and resize VDI
curl -O -L https://github.com/home-assistant/operating-system/releases/download/16.3/haos_generic-aarch64-16.3.vdi.zip
unzip -o haos_generic-aarch64-16.3.vdi.zip
rm haos_generic-aarch64-16.3.vdi.zip
VBoxManage modifyhd --resize 32768 haos_generic-aarch64-16.3.vdi

# Create VM based on https://www.home-assistant.io/installation/macos/
VBoxManage createvm --name "HomeAssistant" --ostype "Oracle_arm64" --register
VBoxManage modifyvm "HomeAssistant" --memory 4096 --cpus 2
VBoxManage modifyvm "HomeAssistant" --graphicscontroller QemuRamFB --vram 16
VBoxManage modifyvm "HomeAssistant" --firmware efi
VBoxManage modifyvm "HomeAssistant" --nic1 bridged --bridgeadapter1 "en1: Wi-Fi"
VBoxManage modifyvm "HomeAssistant" --audiocontroller hda
VBoxManage storagectl "HomeAssistant" --name "SATA Controller" --add sata --controller IntelAhci
VBoxManage storageattach "HomeAssistant" --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium "haos_generic-aarch64-16.3.vdi"
