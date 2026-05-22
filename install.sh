#!/bin/bash

# Configuration targets
REPO_CONFIG_DIR="$HOME/dotfiles/config"
TARGET_CONFIG_DIR="$HOME/.config"
BACKUP_DIR="$HOME/.config_backup_$(date +%Y%m%d_%H%M%S)"

# The definitive list of every essential workspace component
components=(
    "hypr" "waybar" "wallust" "kitty" "wezterm" "alacritty" "ghostty"
    "nvim" "astro" "rofi" "swaync" "wlogout" "fastfetch" "btop" "cava" 
    "mpv" "gtk-3.0" "gtk-4.0" "Kvantum" "qt5ct" "qt6ct" "xsettingsd"
    "thunar" "nwg-displays" "nwg-drawer" "nwg-look" "nwg-panel"
)

echo "🚀 Deploying your complete visual desktop environment..."
mkdir -p "$TARGET_CONFIG_DIR"

for item in "${components[@]}"; do
    SRC="$REPO_CONFIG_DIR/$item"
    DEST="$TARGET_CONFIG_DIR/$item"

    if [ ! -d "$SRC" ]; then
        continue
    fi

    # Safe backup handling for target computers
    if [ -e "$DEST" ] || [ -L "$DEST" ]; then
        echo "⚠️  Archiving pre-existing configuration: $item"
        mkdir -p "$BACKUP_DIR"
        mv "$DEST" "$BACKUP_DIR/$item"
    fi

    # Copy files cleanly to local target destination
    echo "📥 Installing config: $item..."
    cp -r "$SRC" "$DEST"
done

echo "========================================="
echo "✅ All configurations deployed cleanly!"
if [ -d "$BACKUP_DIR" ]; then
    echo "💡 Old user data backed up safely at: $BACKUP_DIR"
fi
echo "========================================="
