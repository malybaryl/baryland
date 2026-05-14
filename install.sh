#!/bin/bash

# Default application install
#chmod +x ./hypr/scripts/installDefaultApplications.sh
#bash ./hypr/scripts/installDefaultApplications.sh

# Move files to .config files

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

