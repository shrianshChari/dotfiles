#!/bin/bash

# This file should have permission to be executed.
# Just run `chmod +x install.sh` to do so.

# You should also have root access of the new computer

# Ripped this from the build.sh file from MangoHud
# It's super handy, and I'm pretty sure it'll work

UPDATE_PACKAGES="sudo apt update"
MANAGER_INSTALL="apt install"

# Funny big text thanks to figlet
echo "         __         _                  __    ________               _ "
echo "   _____/ /_  _____(_)___ _____  _____/ /_  / ____/ /_  ____ ______(_)"
echo "  / ___/ __ \/ ___/ / __ \`/ __ \/ ___/ __ \/ /   / __ \/ __ \`/ ___/ / "
echo " (__  ) / / / /  / / /_/ / / / (__  ) / / / /___/ / / / /_/ / /  / /  "
echo "/____/_/ /_/_/  /_/\__,_/_/ /_/____/_/ /_/\____/_/ /_/\__,_/_/  /_/   "

echo "       __      __  _____ __         "
echo "  ____/ /___  / /_/ __(_) /__  _____"
echo " / __  / __ \/ __/ /_/ / / _ \/ ___/"
echo "/ /_/ / /_/ / /_/ __/ / /  __(__  ) "
echo "\__,_/\____/\__/_/ /_/_/\___/____/  "

test_distro

# Updating distro packages
# May not always work, since I'm not familiar with any
read -p 'Update packages? (Y/n) ' updatepackages
if [[ $updatepackages == 'Y' ]]; then
  echo 'Updating packages...'
  $UPDATE_PACKAGES
else
  echo 'Skipping updating packages...'
fi

# Atom
read -p 'Install Atom? (Y/n) ' installatom
if [ $installatom == 'Y' ]
then
  echo 'Installing Atom...'
  sudo ${MANAGER_INSTALL} atom -y
  python3 atom/install.py

  # symlink for config.cson
  rm ~/.atom/config.cson
  ln -s ~/.dotfiles/atom/config.cson ~/.atom/config.cson
  echo "Atom config.cson symlink complete!"
else
  echo 'Skipping Atom install.'
fi

# Brave Browser
read -p 'Install Brave Browser? (Y/n) ' installbrave
if [ $installbrave == 'Y' ]
then
  echo 'Installing Brave Browser...'
  sudo ${MANAGER_INSTALL} brave-browser -y
else
  echo 'Skipping Brave Browser install.'
fi

# Discord
read -p 'Install Discord? (Y/n) ' installdiscord
if [ $installdiscord == 'Y' ]
then
  echo 'Installing Discord...'
  sudo ${MANAGER_INSTALL} discord -y
else
  echo 'Skipping Discord install.'
fi

# Eclipse
read -p 'Install Eclipse? (Y/n) ' installeclipse
if [ $installeclipse == 'Y' ]
then
  echo 'Installing Eclipse...'
  sudo ${MANAGER_INSTALL} eclipse -y
else
  echo 'Skipping Eclipse install.'
fi

# GNU Nano
# read -p 'Install GNU Nano? (Y/n) ' installnano
# if [ $installnano == 'Y' ]
# then
#   echo 'Installing Nano...'
#   sudo ${MANAGER_INSTALL} nano -y
# else
#   echo 'Skipping Nano install.'
# fi

# Neofetch
read -p 'Install Neofetch? (Y/n) ' installneofetch
if [ $installneofetch == 'Y' ]
then
  echo 'Installing Neofetch...'
  sudo ${MANAGER_INSTALL} neofetch -y
else
  echo 'Skipping Neofetch install.'
fi

# Neovim
read -p 'Install Neovim? (Y/n) ' installneovim
if [[ $installneovim == 'Y' ]]; then
  echo 'Installing Neovim...'
  sudo ${MANAGER_INSTALL} neovim -y

  # symlink for init.vim
  mkdir ~/.config/nvim
  ln -s ~/.dotfiles/neovim/init.vim ~/.config/nvim/init.vim

  # Installing vim-plug autoloader
  curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  ln -s ~/.dotfiles/neovim/vim-plug ~/.config/nvim/vim-plug
  ln -s ~/.dotfiles/neovim/themes ~/.config/nvim/themes
  ln -s ~/.dotfiles/neovim/vimrc ~/.vimrc
  echo "Neovim symlinks created!"
  echo "Be sure to run :PlugStatus when you open Neovim!"
else
  echo 'Skipping Neovim install...'
fi

# NodeJS
read -p 'Install Node.js? (Y/n) ' installnode
if [ $installnode == 'Y' ]
then
  echo 'Installing Node.js...'
  sudo ${MANAGER_INSTALL} nodejs -y
else
  echo 'Skipping Node.js install.'
fi

# Steam
read -p 'Install Steam? (Y/n) ' installsteam
if [ $installsteam == 'Y' ]
then
  echo 'Installing Steam...'
  sudo ${MANAGER_INSTALL} steam -y
else
  echo 'Skipping Steam install.'
fi

# Tilix
read -p 'Install Tilix? (Y/n) ' installtilix
if [ $installtilix == 'Y' ]
then
  echo 'Installing Tilix...'
  sudo ${MANAGER_INSTALL} tilix -y
  sudo update-alternatives --config x-terminal-emulator
else
  echo 'Skipping Tilix install.'
fi

# GNOME Tweaks
read -p 'Install GNOME Tweaks? (Y/n) ' installtweaks
if [ $installtweaks == 'Y' ]
then
  echo 'Installing GNOME Tweaks...'
  sudo ${MANAGER_INSTALL} gnome-tweaks -y
else
  echo 'Skipping GNOME Tweaks install.'
fi

# Zoom
read -p 'Install Zoom? (Y/n) ' installzoom
if [ $installzoom == 'Y' ]
then
  echo 'Installing Zoom...'
  sudo ${MANAGER_INSTALL} zoom -y
else
  echo 'Skipping Zoom install.'
fi

# Snap
read -p 'Install snap? (Y/n) ' installsnap
if [ $installsnap ]; then
  sudo $MANAGER_INSTALL snapd

  # Slack
  read -p 'Install Slack? (Y/n) ' installslack
  if [ $installslack == 'Y' ]
  then
    echo 'Installing Slack...'
    sudo snap install zoom -y
  else
    echo 'Skipping Slack install.'
  fi

  # Bitwarden
  read -p 'Install Bitwarden? (Y/n) ' installbitwarden
  if [ $installbitwarden == 'Y' ]
  then
    echo 'Installing Bitwarden...'
    sudo snap install bitwarden -y
  else
    echo 'Skipping Bitwarden install.'
  fi

  # FromScratch
  read -p 'Install FromScratch? (Y/n) ' installfromscratch
  if [ $installfromscratch == 'Y' ]
  then
    echo 'Installing FromScratch...'
    sudo snap install fromscratch -y
  else
    echo 'Skipping FromScratch install.'
  fi

fi

# symlink for gitconfig
rm ~/.gitconfig
ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig
echo "gitconfig symlink complete!"

# installation of zsh, symlink for zsh/bash config files
read -p 'Install zsh? (Y/n) ' installzsh
if [[ $installzsh == 'Y' ]]; then
  echo "Using zsh..."

  # Installation of zsh
  sudo ${MANAGER_INSTALL} zsh

  # Installation of oh-my-zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  # Compatitbility with Tilix
  if [[ $installtilix == 'Y' ]]; then
    # symlink for .zshrc
    sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
    rm ~/.zshrc
    ln -s ~/.dotfiles/zsh/zshrctilix ~/.zshrc
    echo "zshrc symlink complete!"
  else
    # symlink for .zshrc
    rm ~/.zshrc
    ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc
    echo "zshrc symlink complete!"
  fi
else
  echo "Using bash..."

  # Compatitbility with Tilix
  if [[ $installtilix ]]; then
    # symlink for bashrc
    sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
    rm ~/.bashrc
    ln -s ~/.dotfiles/bash/bashrctilix ~/.bashrc
    echo "bashrc symlink complete!"
  else
    # symlink for bashrc
    rm ~/.bashrc
    ln -s ~/.dotfiles/bash/bashrc ~/.bashrc
    echo "bashrc symlink complete!"
  fi

  if [ -e "~/.bash_profile" ];
  then
    # symlink for bash_profile
    rm ~/.bash_profile
    ln -s ~/.dotfiles/bash/profile ~/.bash_profile
    echo "bash_profile symlink complete!"
  else
    # symlink for profile
    rm ~/.profile
    ln -s ~/.dotfiles/bash/profile ~/.profile
    echo "profile symlink complete!"
  fi
fi
