#!/bin/bash
# Kali Linux Wallpapers Installer
# Author: Neoooby-Doo (Sakhawat Hossain)
# License: CC0 1.0 Universal

echo ""
echo "Install - Kali Linux Wallpapers by Sakhawat"
echo "----------------------------------------------"
echo ""

# Detect repo path
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
WALLPAPER_DIR="$REPO_DIR/wallpapers"

# Check if wallpapers folder exists
if [ ! -d "$WALLPAPER_DIR" ]; then
    echo "❌ Wallpapers folder not found! Make sure you're running this from the repo root."
    exit 1
fi

echo "Where would you like to install the wallpapers?"
echo "1) System-wide (/usr/share/backgrounds)"
echo "2) Only for this user (~/.local/share/backgrounds)"
read -p "Select [1/2]: " choice

echo ""

if [ "$choice" == "1" ]; then
    echo "Installing system-wide (requires sudo)..."
    sudo mkdir -p /usr/share/backgrounds/kali-custom
    sudo cp -r "$WALLPAPER_DIR"/* /usr/share/backgrounds/kali-custom/
    echo "Wallpapers installed to /usr/share/backgrounds/kali-custom"
elif [ "$choice" == "2" ]; then
    TARGET_DIR="$HOME/.local/share/backgrounds/kali-custom"
    mkdir -p "$TARGET_DIR"
    cp -r "$WALLPAPER_DIR"/* "$TARGET_DIR/"
    echo "Wallpapers installed to $TARGET_DIR"
else
    echo "Invalid choice. Installation cancelled."
    exit 1
fi

echo ""
echo "Done!"
echo "----------------------------------------------"
echo "Enjoy!"
echo ""
