#!/bin/bash

sudo cp ~/.dotfiles/plymouth/pop-basic.plymouth /usr/share/plymouth/themes/pop-basic/
sudo update-initramfs -u
