#!/usr/bin/fish

echo "Installing..."
sudo pacman -S base-devel fish tmux curl

echo ">> Copy config files"
sudo cp -r ./.config/* ~/.config
sudo cp -r .tmux.conf ~/

#echo ">> Fisher: Installing"
#source $(curl -sL https://git.io/fisher) && fisher install jorgebucaran/fisher

echo ">> Fisher: Installing nvm plugin"
fisher install jorgebucaran/nvm.fish

echo ">> Fisher: Installing pure prompt"
fisher install pure-fish/pure

echo ">> Polybar: Installing"
yay -S polybar

echo ">> Fonts: Installing FiraCode Nerd Font"
yay -S nerd-fonts-fira-code

echo ">> Neovim: Installing"
sudo pacman -S neovim

echo ">> VimPlug: Installing"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo ">> NVM: Installing LTS"
nvm install lts
set -gx PATH (which node) $PATH

echo "Neovim: PlugInstall"
nvim --headless +PlugInstall +qa
