#!/bin/bash

# Check if Rosetta is already installed
if [[ ! $(arch) == "i386" ]] && [[ ! -e "/Library/Apple/usr/share/rosetta/rosetta" ]]; then
    # Install Rosetta 2 without user interaction
    sudo softwareupdate --install-rosetta --agree-to-license
    if [[ $? -eq 0 ]]; then
        echo "Rosetta 2 installed successfully."
    else
        echo "Failed to install Rosetta 2."
    fi
else
    echo "Rosetta 2 is already installed."
fi
