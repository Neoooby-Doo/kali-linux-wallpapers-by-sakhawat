#!/bin/bash
# Kali Linux Wallpapers Installer
# Author: Neoooby-Doo (Sakhawat Hossain)
# License: CC0 1.0 Universal

WALLPAPER_DIR="/usr/share/backgrounds/kali-linux-wallpapers-by-sakhawat"

echo "Installing Kali Linux wallpapers by Sakhawat..."
sudo mkdir -p "$WALLPAPER_DIR"
sudo cp -r wallpapers/* "$WALLPAPER_DIR/"

echo "Wallpapers installed successfully!"
echo "You can find them in: $WALLPAPER_DIR"
echo "Set your wallpaper from system settings → Background."
