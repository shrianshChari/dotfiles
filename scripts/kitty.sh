#!/bin/bash

MANAGER_INSTALL="apt install"
DEB_INSTALL="dpkg -i"

sudo ${MANAGER_INSTALL} kitty -y
sudo update-alternatives --config x-terminal-emulator

mkdir $HOME/.config/kitty/

ln -s $HOME/.dotfiles/kitty/kitty.conf $HOME/.config/kitty/kitty.conf
