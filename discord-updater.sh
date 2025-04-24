#!/bin/bash
# Discord Auto Updater for Linux

# Variables
DESTINATION="/usr/local/bin"
SCRIPT="$(readlink -f "$0")"
SCRIPT_NAME="$(basename "$CURRENT_SCRIPT")"
FINAL_PATH="$DESTINATION/$SCRIPT_NAME"
DISCORD_URL="https://discord.com/api/download?platform=linux&format=deb"
TEMP_DIR="/tmp/discord-updater"
DISCORD_DEB="$TEMP_DIR/discord.deb"

# Function to ensure the script is in PATH and executable
ensure_command() {
    # If the script is not in /usr/local/bin
    if [ "$CURRENT_SCRIPT" != "$FINAL_PATH" ]; then
        echo "Moving the script to $DESTINATION..."

        # Move with sudo if needed
        if [ -w "$DESTINATION" ]; then
            mv "$CURRENT_SCRIPT" "$DESTINATION/"
        else
            sudo mv "$CURRENT_SCRIPT" "$DESTINATION/"
        fi
    fi

    # Make sure the script is executable
    if [ ! -x "$FINAL_PATH" ]; then
        echo "Making the script executable..."
        if [ -w "$FINAL_PATH" ]; then
            chmod +x "$FINAL_PATH"
        else
            sudo chmod +x "$FINAL_PATH"
        fi
    fi

    # Re-execute the script as a command
    exec "$SCRIPT_NAME" "$@"
    exit
}

# Check if the script is already accessible as a command in PATH
if ! command -v "$SCRIPT_NAME" >/dev/null 2>&1 || [ "$CURRENT_SCRIPT" != "$FINAL_PATH" ]; then
    ensure_command "$@"
fi

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