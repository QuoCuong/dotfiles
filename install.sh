#!/usr/bin/sh

echo "Installing..."
pacman -S tmux python python-pip dunst nnn xclip docker docker-compose

echo "Installing pynvim module..."
python -m pip install pynvim

echo "Installing fira code nerd font..."
yay -S zoxide exa nerd-fonts-fira-code tamzen-font

echo "Installing VIM PLUG..."
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "Copy config files"
cp -r ./.config/* ~/.config

echo "Copy tmux config"
cp ./.config/.tmux.conf ~/

echo "Restarting i3 config"
i3-msg restart
