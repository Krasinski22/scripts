#!/bin/bash

# Verifica se o script está sendo executado como root (UID 0)
# if [ "$(id -u)" -ne 0 ]; then
#    echo "Este script deve ser executado como #root ou usando 'sudo'."
#    exit 1
#fi

# Define a variável HOME para ser o diretório home do usuário que invocou o sudo
#HOME=$(eval echo "~$SUDO_USER")
# USER_HOME=$HOME

rm -rf "$HOME/.config/polybar"
ln -sf "$HOME/dotfiles/polybar" "$HOME/.config/polybar"

rm -rf "$HOME/.config/i3"
ln -sf "$HOME/dotfiles/i3" "$HOME/.config/i3"

rm -rf "$HOME/.config/mpv"
ln -sf "$HOME/dotfiles/mpv" "$HOME/.config/mpv"

rm -rf "$HOME/.config/fish/config.fish"
ln -sf "$HOME/dotfiles/fish/config.fish" "$HOME/.config/fish/config.fish"

rm -rf "$HOME/.config/fish/functions"
ln -sf "$HOME/dotfiles/fish/functions" "$HOME/.config/fish/functions"

rm -rf "$HOME/.config/keepassxc"
ln -sf "$HOME/dotfiles/keepassxc" "$HOME/.config/keepassxc"

rm -rf "$HOME/.config/kitty"
ln -sf "$HOME/dotfiles/kitty" "$HOME/.config/kitty"

rm -rf "$HOME/.config/Thunar"
ln -sf "$HOME/dotfiles/thunar" "$HOME/.config/Thunar"

rm -rf "$HOME/.config/xfce4/"
ln -sf "$HOME/dotfiles/xfce4/" "$HOME/.config/xfce4"

ln -sf "$HOME/dotfiles/hypr" "$HOME/.config/hypr"


ln -sf "$HOME/dotfiles/sublime-text" "$HOME/.config/sublime-text/Packages/User"

rm -rf "$HOME/.icons"
ln -sf "$HOME/dotfiles/.icons" "$HOME/.icons"

rm -rf "$HOME/.nanorc"
ln -sf "$HOME/dotfiles/.nanorc" "$HOME/.nanorc"

rm -rf "$HOME/.wezterm.lua"
ln -sf "$HOME/dotfiles/.wezterm.lua" "$HOME/.wezterm.lua"

rm -rf "$HOME/.bashrc"
ln -sf "$HOME/dotfiles/.bashrc" "$HOME/.bashrc"

rm -rf "$HOME/.zshrc"
ln -sf "$HOME/dotfiles/.zshrc" "$HOME/.zshrc"

rm -rf "$HOME/.gitconfig"
ln -sf "$HOME/dotfiles/.gitconfig" "$HOME/.gitconfig"

sudo rm -rf "/etc/pacman.conf"
sudo ln -sf "$HOME/dotfiles/pacman/pacman.conf" "/etc/pacman.conf"

sudo rm -rf "/etc/pacman-mirrors.conf"
sudo ln -sf "$HOME/dotfiles/pacman/pacman-mirrors.conf" "/etc/pacman-mirrors.conf"

sudo rm -rf "/etc/pacman.d/mirrorlist"
sudo ln -sf "$HOME/dotfiles/pacman/mirrorlist" "/etc/pacman.d/mirrorlist"

sudo rm -rf "$HOME/.config/dconf"
ln -sf "$HOME/dotfiles/dconf" "$HOME/.config/dconf"