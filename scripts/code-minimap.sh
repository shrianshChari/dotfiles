#!/bin/bash

MANAGER_INSTALL="apt install"
DEB_INSTALL="dpkg -i"

# Install code-minimap
wget https://github.com/wfxr/code-minimap/releases/download/v0.6.4/code-minimap_0.6.4_arm64.deb

sudo ${DEB_INSTALL} ./code-minimap_0.6.4_arm64.deb
rm code-minimap_0.6.4_arm64.deb
