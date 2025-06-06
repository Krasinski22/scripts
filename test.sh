#!/bin/bash

# Function to check if a command exists
command_exists () {
    type "$1" &> /dev/null ;
}

# ---
## Detect OS
# ---
if command_exists apt; then
    OS="ubuntu_mint"
    echo "Detected Ubuntu/Mint"
elif command_exists pacman; then
    OS="arch_manjaro"
    echo "Detected Arch/Manjaro"
else
    echo "Unsupported operating system. This script supports Debian-based (Ubuntu/Mint) and Arch-based (Arch/Manjaro) systems."
    exit 1
fi
