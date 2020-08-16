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
# Install nvm and npm           |
# -------------------------------
echo 'Install nvm'
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
echo 'Add the source lines to .zshrc'
echo 'export NVM_DIR='$([ -z '${XDG_CONFIG_HOME-}' ] && printf %s '${HOME}/.nvm' || printf %s '${XDG_CONFIG_HOME}/nvm')'
[ -s '$NVM_DIR/nvm.sh' ] && \. '$NVM_DIR/nvm.sh' # This loads nvm' >> ~/.zshrc
echo 'Install npm'
nvm install --lts

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
