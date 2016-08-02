#!/bin/bash

# Install fonts to user's fonts directory
cp -n -R resources/fonts/ ~/Library/Fonts/

# Check if solarized themes are installed
_solarized=$(grep -U -i 'solarized' ~/Library/Preferences/com.apple.Terminal.plist)

# If not found...
if [ -z "$_solarized" ]; then
  # Open the terminal themes folder for installation
  open resources/terminal\ themes
fi
