#!/bin/bash

# This file should have permission to be executed.
# Just run `chmod +x install.sh` to do so.

# You should also have root access of the new computer

# List of software:
# GNU Nano (apt)
# Atom (apt)
# Tilix (apt)
# Brave Browser (apt)
# Gnome Tweaks (apt)
# Discord (apt)
# Steam (apt)
# Eclipse
# Slack (get from the website)
# Bitwarden (get from the website)
# Zoom (get from the website)

sudo apt update

# GNU Nano
read -p 'Install GNU Nano? (Y/n) ' installnano
if [ $installnano == 'Y' ]
then
  echo 'Installing Nano...'
  sudo apt install nano -y
else
  echo 'Skipping Nano install.'
fi

# Tilix
read -p 'Install Tilix? (Y/n) ' installtilix
if [ $installtilix == 'Y' ]
then
  echo 'Installing Tilix...'
  sudo apt install tilix -y
  sudo update-alternatives --config x-terminal-emulator
else
  echo 'Skipping Tilix install.'
fi

# GNOME Tweaks
read -p 'Install GNOME Tweaks? (Y/n) ' installtweaks
if [ $installtweaks == 'Y' ]
then
  echo 'Installing GNOME Tweaks...'
  sudo apt install gnome-tweaks -y
else
  echo 'Skipping GNOME Tweaks install.'
fi

# Brave Browser
read -p 'Install Brave Browser? (Y/n) ' installbrave
if [ $installbrave == 'Y' ]
then
  echo 'Installing Brave Browser...'
  sudo apt install brave-browser -y
else
  echo 'Skipping Brave Browser install.'
fi

# Discord
read -p 'Install Discord? (Y/n) ' installdiscord
if [ $installdiscord == 'Y' ]
then
  echo 'Installing Discord...'
  sudo apt install discord -y
else
  echo 'Skipping Discord install.'
fi

# Steam
read -p 'Install Steam? (Y/n) ' installsteam
if [ $installsteam == 'Y' ]
then
  echo 'Installing Steam...'
  sudo apt install steam -y
else
  echo 'Skipping Steam install.'
fi
