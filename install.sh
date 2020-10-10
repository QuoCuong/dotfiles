#!/usr/bin/sh

echo "Installing..."
pacman -S base-devel yay conky tmux

echo "Copy config files"
cp -r ./.config/* ~/.config
