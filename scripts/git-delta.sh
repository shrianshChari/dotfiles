#!/bin/bash

MANAGER_INSTALL="apt install"
DEB_INSTALL="dpkg -i"

# git-delta
wget https://github.com/dandavison/delta/releases/download/0.13.0/git-delta_0.13.0_amd64.deb
sudo ${DEB_INSTALL} ./git-delta_0.13.0_amd64.deb
rm git-delta_0.13.0_amd64.deb
