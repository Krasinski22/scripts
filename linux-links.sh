#!/bin/bash

rm -rf "$HOME/.config/polybar"
ln -sf "$HOME/scripts/polybar" "$HOME/.config/polybar"

rm -rf "$HOME/.config/i3"
ln -sf "$HOME/scripts/i3" "$HOME/.config/i3"

rm -rf "$HOME/.config/mpv"
ln -sf "$HOME/scripts/mpv" "$HOME/.config/mpv"

rm -rf "$HOME/.config/fish"
ln -sf "$HOME/scripts/fish" "$HOME/.config/fish"

rm -rf "$HOME/.config/keepassxc"
ln -sf "$HOME/scripts/keepassxc" "$HOME/.config/keepassxc"

rm -rf "$HOME/.config/kitty"
ln -sf "$HOME/scripts/kitty" "$HOME/.config/kitty"

rm -rf "$HOME/.config/sublime-text/Packages/User"
mkdir -p "$HOME/.config/sublime-text/Packages"
ln -sf "$HOME/scripts/sublime/User" "$HOME/.config/sublime-text/Packages/User"

rm -rf "$HOME/.icons"
ln -sf "$HOME/scripts/.icons" "$HOME/.icons"

rm -rf "$HOME/.nanorc"
ln -sf "$HOME/scripts/.nanorc" "$HOME/.nanorc"
