#!/bin/bash
# Discord Auto Updater for Linux

# Variables
DISCORD_URL="https://discord.com/api/download?platform=linux&format=deb"
TEMP_DIR="/tmp/discord-updater"
DISCORD_DEB="$TEMP_DIR/discord.deb"

# Create temporary directory
mkdir -p "$TEMP_DIR"

# Download the latest Discord .deb package
echo "Downloading the latest Discord package..."
wget -O "$DISCORD_DEB" "$DISCORD_URL"

# Check if the download was successful
if [ $? -ne 0 ]; then
    echo "Failed to download Discord. Exiting."
    exit 1
fi

# Install the downloaded package
echo "Installing Discord..."
sudo dpkg -i "$DISCORD_DEB"

# Fix any dependency issues
echo "Fixing dependencies..."
sudo apt-get install -f -y

# Clean up
echo "Cleaning up..."
rm -rf "$TEMP_DIR"

echo "Discord has been updated successfully!"