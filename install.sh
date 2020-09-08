#!/usr/bin/sh

echo "Installing..."
pacman -S conky

echo "Copy config files"
cp -r ./.config/* ~/.config
