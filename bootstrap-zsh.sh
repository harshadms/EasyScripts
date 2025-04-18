#!/usr/bin/env bash

# Install dependencies
sudo apt-get update
sudo apt-get install -y zsh git curl wget fonts-powerline

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Install plugins
ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM}/plugins/zsh-autosuggestions

# Create .zshrc with SSH locale fixes
cat > ~/.zshrc << 'EOL'
export ZSH="$HOME/.oh-my-zsh"
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

# Fix SSH character rendering
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

source $ZSH/oh-my-zsh.sh
[ -f ~/.zsh_prompt ] && source ~/.zsh_prompt
EOL

# Install custom prompt (replace URL with your actual prompt file)
curl -L https://raw.githubusercontent.com/harshadms/EasyScripts/refs/heads/master/zsh_prompt -o ~/.zsh_prompt

# Set as default shell
sudo chsh -s $(which zsh) $(whoami)
exec zsh
