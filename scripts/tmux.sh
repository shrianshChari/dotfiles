#!/bin/bash

MANAGER_INSTALL="apt install"
DEB_INSTALL="dpkg -i"

sudo ${MANAGER_INSTALL} tmux -y

if [ -f "$HOME/.tmux.conf" ]; then
	rm $HOME/.tmux.conf
fi

# TPM
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

ln -s $HOME/.dotfiles/tmux/tmux.conf $HOME/.tmux.conf

echo "Tmux symlinks created!"
# echo "Be sure to run \"vim -c 'PlugInstall'\" when first opening Vim!"
