#!/bin/bash
# Kali Linux Wallpapers Installer
# Author: Neoooby-Doo (Sakhawat Hossain)
# License: CC BY-NC 4.0

echo ""
echo "🌙 Kali Linux Wallpapers — Installer by Neoooby-Doo"
echo "--------------------------------------------------"
echo ""

# Detect repo path (safe)
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
WALLPAPER_DIR="$REPO_DIR/wallpapers"

# Check if wallpapers folder exists
if [ ! -d "$WALLPAPER_DIR" ]; then
    echo "❌ Wallpapers folder not found! Make sure you're running this from the repo root."
    exit 1
fi

# Ask user where to install
echo "Where would you like to install the wallpapers?"
echo "1) System-wide (/usr/share/backgrounds)"
echo "2) Only for this user (~/.local/share/backgrounds)"
read -p "Select [1/2]: " choice

echo ""

if [ "$choice" == "1" ]; then
    echo "🧠 Installing system-wide (requires sudo)..."
    sudo mkdir -p /usr/share/backgrounds/kali-by-sakhawat
    sudo cp -r "$WALLPAPER_DIR"/* /usr/share/backgrounds/kali-by-sakhawat/
    echo "✅ Wallpapers installed to /usr/share/backgrounds/kali-by-sakhawat"
elif [ "$choice" == "2" ]; then
    TARGET_DIR="$HOME/.local/share/backgrounds/kali-by-sakhawat"
    mkdir -p "$TARGET_DIR"
    cp -r "$WALLPAPER_DIR"/* "$TARGET_DIR/"
    echo "✅ Wallpapers installed to $TARGET_DIR"
else
    echo "⚠️ Invalid choice. Installation cancelled."
    exit 1
fi

echo ""
echo "✨ Done! Open Settings → Background to select your new wallpapers."
echo "--------------------------------------------------"
echo "🖼  Enjoy your custom Kali look!"
echo ""
