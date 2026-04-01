#!/bin/bash
sudo cp default.conf /usr/share/sddm/themes/SilentSDDM/configs/default.conf
sudo cp ../wallpaper/Pictures/wallpaper.jpg /usr/share/sddm/themes/SilentSDDM/backgrounds/wallpaper.jpg
sudo pacman -S qt6-virtualkeyboard
echo "Done — restart SDDM with: sudo systemctl restart sddm"
