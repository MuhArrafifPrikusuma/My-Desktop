#!/bin/bash

# Define directories
DOTFILES_DIR="$HOME/dotfiles"
CONFIG_DIR="$HOME/.config"

# List of folders you want to link into ~/.config
themes=(
    "hypr"
    "waybar"
    "wallust"
    "kitty"
    "nvim"
)

echo "🚀 Starting dotfiles deployment..."

# Ensure ~/.config exists
mkdir -p "$CONFIG_DIR"

for folder in "${themes[@]}"; do
    # If a real directory or old symlink already exists, remove it safely
    if [ -e "$CONFIG_DIR/$folder" ] || [ -L "$CONFIG_DIR/$folder" ]; then
        echo "⚠️  Removing existing configuration for $folder"
        rm -rf "$CONFIG_DIR/$folder"
    fi

    # Generate the pristine symlink
    echo "🔗 Linking $folder -> $CONFIG_DIR/$folder"
    ln -s "$DOTFILES_DIR/$folder" "$CONFIG_DIR/$folder"
done

echo "✅ Dotfiles deployed successfully!"
