#!/usr/bin/env sh

# Better default config
sh defaults.sh

# Install dev tools
xcode-select --install
sleep 1
osascript <<EOF
  tell application "System Events"
    tell process "Install Command Line Developer Tools"
      keystroke return
      click button "Agree" of window "License Agreement"
    end tell
  end tell
EOF

echo "Note that some of these changes require a logout/restart to take effect."


