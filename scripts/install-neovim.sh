#!/bin/bash

# Description: A shell script to install Neovim and configure it.

# Install dependencies
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
	sudo apt update
	sudo apt install -y neovim git curl
elif [[ "$OSTYPE" == "darwin"* ]]; then
	brew update
	brew install neovim git curl
fi

# Clone the Neovim configuration repository
repo_url="https://github.com/ms0216/neovim-setup.git"
config_dir="$HOME/.config/nvim"
git clone --recurse-submodules "$repo_url" "neovim-setup"

# Create a symbolic link to the Neovim configuration files
ln -s "$(pwd)/neovim-setup/config" "$config_dir"

echo "Neovim configuration files have been linked."