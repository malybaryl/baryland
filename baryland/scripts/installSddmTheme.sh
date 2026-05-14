#!/bin/bash
echo "[INFO] Installing Sugar Candy sddm theme..."
yay -S sddm-theme-sugar-candy

echo "[INFO] [1/6] Removing old /etc/sddm.conf"
sudo rm /etc/sddm.conf

echo "[INFO] [2/6] Coping new sddm.conf to /etc/sddm.conf"
sudo cp ~/.config/baryland/sddm/sddm.conf /etc/sddm.conf

echo "[INFO] [3/6] Removing default Background"
sudo rm /usr/share/sddm/themes/Sugar-Candy/Backgrounds/Mountain.jpg

echo "[INFO] [4/6] Adding Baryland login wallpaper"
sudo cp ~/.config/baryland/wallpapers/baryland-login-screen.jpg /usr/share/sddm/themes/Sugar-Candy/Backgrounds/Mountain.jpg

echo "[INFO] [5/6] Removing old theme.conf"
sudo rm /usr/share/sddm/themes/Sugar-Candy/theme.conf

echo "[INFO] [6/6] Adding new theme.conf"
sudo cp ~/.config/baryland/sddm/theme.conf /usr/share/sddm/themes/Sugar-Candy/theme.conf

echo "[INFO] Sugar Candy sddm theme installed."
