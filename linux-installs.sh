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

# ---
## Install packages based on OS
# ---
if [ "$OS" == "ubuntu_mint" ]; then
    echo "Installing packages for Ubuntu/Mint..."
    sudo apt update
    sudo apt install -y \
        git \
        fish \
        brave-browser \
        cloudflare-warp \
        i3 \
        kitty \
        wezterm \
        mpv \
        picom \
        polybar \
        rclone \
        rofi \
        sublime-text \
        syncthingtray \
        xdotool \
        zsh \
        steam \
        solaar

    echo "Adding PPA for Fsearch..."
    sudo add-apt-repository ppa:christian-boxdoerfer/fsearch-stable -y
    sudo apt update
    sudo apt install -y fsearch

elif [ "$OS" == "arch_manjaro" ]; then
    echo "Installing packages for Arch/Manjaro..."

    # Check for yay and install if not found
    if ! command_exists yay; then
        echo "yay not found. Installing yay..."
        sudo pacman -S --noconfirm git base-devel
        git clone https://aur.archlinux.org/yay.git ~/yay
        (cd ~/yay && makepkg -si --noconfirm)
    fi

    sudo pacman -S --noconfirm \
        i3-wm \
        wezterm \
        mpv \
        picom \
        polybar \
        rclone \
        rofi \
        syncthingtray \
        xdotool \
        fish \
        zsh \
        steam \
        solaar \
        brave-browser \
        git \
	qbittorrent \
	keepassxc 
    # Sublime Text is often installed manually or via AUR, uncomment if you have an AUR helper
    # yay -S --noconfirm sublime-text

    echo "Installing AUR packages with yay..."
    yay -S --noconfirm \
        cloudflare-warp-bin \
        fsearch \
        qdirstat \
	sublime-text-4
fi

echo "Package installation complete!"