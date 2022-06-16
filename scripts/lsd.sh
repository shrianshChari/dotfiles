#!/bin/bash

MANAGER_INSTALL="apt install"
DEB_INSTALL="dpkg -i"

# lsd
wget https://github.com/Peltoche/lsd/releases/download/0.20.1/lsd_0.20.1_amd64.deb
sudo ${DEB_INSTALL} ./lsd_0.20.1_amd64.deb
rm lsd_0.20.1_amd64.deb
