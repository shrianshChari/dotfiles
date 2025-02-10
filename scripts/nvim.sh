#!/bin/bash

MANAGER_INSTALL="apt install"
DEB_INSTALL="dpkg -i"

wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
sudo ${DEB_INSTALL} ./nvim-linux64.deb
rm nvim-linux64.deb

if [ ! -d "$HOME/.config/nvim" ]; then
	mkdir $HOME/.config/nvim
	echo "Nvim folder created"
fi

# symlink for init.lua
if [ -f "$HOME/.config/nvim/init.vim" ]; then
	rm $HOME/.config/nvim/init.vim
fi
ln -s $HOME/.dotfiles/neovim/init.lua $HOME/.config/nvim/

ln -s $HOME/.dotfiles/neovim/lua $HOME/.config/nvim/
