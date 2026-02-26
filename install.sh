#!/bin/bash

set -e

SCRIPT_NAME="dbconvert"
TARGET="/usr/local/bin/$SCRIPT_NAME"

if [[ ! -f "$SCRIPT_NAME" ]]; then
    echo "Error: $SCRIPT_NAME not found in current directory."
    exit 1
fi

chmod +x "$SCRIPT_NAME"

echo "Installing $SCRIPT_NAME to $TARGET"
sudo cp "$SCRIPT_NAME" "$TARGET"

echo "Installation complete."
echo "You can now run: $SCRIPT_NAME"
