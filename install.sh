#!/usr/bin/sh

# -------------------------------
# Setup ohmyzsh                 |
# -------------------------------
echo '!!!SETUP OHMYZSH!!!'

if ! command -v zsh &> /dev/null; then
  echo 'zsh command not found!'
  echo 'Installing zsh'
  sudo apt install zsh
fi

echo 'Installing ohmyzsh...'
sh -c '$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)'
echo 'Install zsh-autosuggestions'
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
echo 'Install zsh-syntax-highlighting'
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
echo 'Add zsh-autosuggestions and zsh-syntax-highlighting to .zshrc'a

# -------------------------------
# Setup tmux                    |
# -------------------------------
echo '!!!SETUP TMUX!!!'

echo 'Copy .tmux.conf'
cp -rf ./.tmux.conf ~/.tmux.conf

# -------------------------------
# Setup neovim                  |
# -------------------------------
echo '!!!SETUP NEOVIM!!!'

echo 'Install vim-plug...'
sh -c 'curl -fLo '${XDG_DATA_HOME:-$HOME/.local/share}'/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo 'Copy .config'
cp -rf ./.config ~/

cp ./.zshrc ~/.zshrc
echo 'Install completed!'