#!/bin/bash

MANAGER_INSTALL="apt install"
DEB_INSTALL="dpkg -i"

sudo ${MANAGER_INSTALL} vim -y

# Installing vim-plug autoloader
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if [ -f "$HOME/.vimrc" ]; then
	rm $HOME/.vimrc
fi
ln -s $HOME/.dotfiles/vim/init.vim $HOME/.vimrc

if [ ! -d "$HOME/.vim" ]; then
	mkdir $HOME/.vim
	echo "Vim folder created"
fi
ln -s $HOME/.dotfiles/vim/config $HOME/.vim/

echo "Vim symlinks created!"
echo "Be sure to run \"vim -c 'PlugInstall'\" when first opening Vim!"
