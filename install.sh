#!/bin/bash

# Default application install
echo "[INFO] Installing default Applications."
chmod +x ./baryland/scripts/installDefaultApplications.sh
bash ./baryland/scripts/installDefaultApplications.sh

echo "[INFO] Installing config files..."
# Move files to .config files
echo "[INFO] [1/6] Installing baryland files."
cp -r ./baryland ~/.config/baryland
mkdir ~/.config/hypr/userConfigs
mkdir ~/.config/hypr/userScripts

echo "[INFO] [2/6] Installing fastfetch config."
rm -r ~/.config/fastfetch
cp -r ./fastfetch ~/.config/fastfetch 

echo "[INFO] [2/6] Installing ghostty config."
rm -r ~/.config/ghostty
cp -r ./ghostty ~/.config/ghostty

echo "[INFO] [3/6] Installing hypr config."
cp -r ./hypr/* ~/.config/hypr

echo "[INFO] [4/6] Installing rofi config."
rm -r ~/.config/rofi
cp -r ./rofi ~/.config/rofi

echo "[INFO] [5/6] Installing Thunar config."
rm -r ~/.config/Thunar
cp -r ./Thunar ~/.config/Thunar

echo "[INFO] [6/6] Installing waybar config."
rm -r ~/.config/waybar
cp -r ./waybar ~/.config/waybar

# Cursor install
chmod +x ~/.config/baryland/scripts/installCursor.sh
bash ~/.config/baryland/scripts/installCursor.sh

# Waybar install
chmod +x ~/.config/waybar/clock.sh

# Bluetooth
sudo systemctl enable --now bluetooth

# Sddm theme install
chmod +x ~/.config/baryland/scripts/installSddmTheme.sh
bash ~/.config/baryland/scripts/installSddmTheme.sh

# NvChad
chmod +x ~/.config/baryland/scripts/installNvchad.sh
bash ~/.config/baryland/scripts/installNvchad.sh

echo "[DONE] Config installed. Recommened to reboot your system! Enjoy using Baryland :D."
