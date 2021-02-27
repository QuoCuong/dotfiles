#!/usr/bin/sh

echo "Installing..."
pacman -S tmux

echo "Installing fira code nerd font..."
yay -S nerd-fonts-fira-code

echo "Installing VIM PLUG..."
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "Copy config files"
cp -r ./.config/* ~/.config
