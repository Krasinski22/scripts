#!/bin/bash

# Verifica se o script está sendo executado como root (UID 0)
# if [ "$(id -u)" -ne 0 ]; then
#    echo "Este script deve ser executado como #root ou usando 'sudo'."
#    exit 1
#fi

# Define a variável USER_HOME para ser o diretório home do usuário que invocou o sudo
#USER_HOME=$(eval echo "~$SUDO_USER")
USER_HOME=$HOME

rm -rf "$USER_HOME/.config/polybar"
ln -sf "$USER_HOME/scripts/polybar" "$USER_HOME/.config/polybar"

rm -rf "$USER_HOME/.config/i3"
ln -sf "$USER_HOME/scripts/i3" "$USER_HOME/.config/i3"

rm -rf "$USER_HOME/.config/mpv"
ln -sf "$USER_HOME/scripts/mpv" "$USER_HOME/.config/mpv"

rm -rf "$USER_HOME/.config/fish"
ln -sf "$USER_HOME/scripts/fish" "$USER_HOME/.config/fish"

rm -rf "$USER_HOME/.config/keepassxc"
ln -sf "$USER_HOME/scripts/keepassxc" "$USER_HOME/.config/keepassxc"

rm -rf "$USER_HOME/.config/kitty"
ln -sf "$USER_HOME/scripts/kitty" "$USER_HOME/.config/kitty"

rm -rf "$USER_HOME/.config/Thunar"
ln -sf "$USER_HOME/scripts/Thunar" "$USER_HOME/.config/Thunar"

rm -rf "$USER_HOME/.config/xfce4/"
ln -sf "$USER_HOME/scripts/xfce4/" "$USER_HOME/.config/xfce4"

ln -sf "$USER_HOME/scripts/hypr" "$USER_HOME/.config/hypr"

rm -rf "$USER_HOME/.config/sublime-text/Packages/User"
mkdir -p "$USER_HOME/.config/sublime-text/Packages"
ln -sf "$USER_HOME/scripts/sublime/User" "$USER_HOME/.config/sublime-text/Packages/User"

rm -rf "$USER_HOME/.icons"
ln -sf "$USER_HOME/scripts/.icons" "$USER_HOME/.icons"

rm -rf "$USER_HOME/.nanorc"
ln -sf "$USER_HOME/scripts/.nanorc" "$USER_HOME/.nanorc"

rm -rf "$USER_HOME/.wezterm.lua"
ln -sf "$USER_HOME/scripts/.wezterm.lua" "$USER_HOME/.wezterm.lua"

rm -rf "$USER_HOME/.bashrc"
ln -sf "$USER_HOME/scripts/.bashrc" "$USER_HOME/.bashrc"

rm -rf "$USER_HOME/.zshrc"
ln -sf "$USER_HOME/scripts/.zshrc" "$USER_HOME/.zshrc"

rm -rf "$USER_HOME/.gitconfig"
ln -sf "$USER_HOME/scripts/.gitconfig" "$USER_HOME/.gitconfig"

sudo rm -rf "/etc/pacman.conf"
sudo ln -sf "$USER_HOME/scripts/pacman.conf" "/etc/pacman.conf"

sudo rm -rf "/etc/pacman-mirrors.conf"
sudo ln -sf "$USER_HOME/scripts/pacman-mirrors.conf" "/etc/pacman-mirrors.conf"

sudo rm -rf "/etc/pacman.d/mirrorlist"
sudo ln -sf "$USER_HOME/scripts/pacman.d/mirrorlist" "/etc/pacman.d/mirrorlist"

