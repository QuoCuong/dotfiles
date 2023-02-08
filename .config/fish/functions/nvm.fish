# Install NVM manually (https://github.com/creationix/nvm)
# Install bass (https://github.com/edc/bass)
# Add code below to your config.fish

function nvm
   bass source ~/.nvm/nvm.sh --no-use ';' nvm $argv
end

nvm use default --silent

# Install last stable node.js
# ⋊> ~ nvm install stable

# Set stable version to default
# ⋊> ~ nvm alias default stable
