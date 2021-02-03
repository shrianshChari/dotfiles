#!/bin/bash

# This file should have permission to be executed.
# Just run `chmod +x install.sh` to do so.

# You should also have root access of the new computer

# List of software:
# Atom (apt) ✔️
# Brave Browser (apt) ✔️
# Discord (apt) ✔️
# GNU Nano (apt) ✔️
# Steam (apt) ✔️
# Tilix (apt) ✔️
# Gnome Tweaks (apt) ✔️
# Neofetch (apt) ✔️
# NPM/NPX
# Eclipse
# Slack (get from the website)
# Bitwarden (get from the website)
# Zoom (get from the website)

# Ripped this from the build.sh file from MangoHud
# It's super handy, and I'm pretty sure it'll work
test_distro() {
  OS_RELEASE_FILES=("/etc/os-release" "/usr/lib/os-release")

  # echo "${OS_RELEASE_FILES}"

  for os_release in ${OS_RELEASE_FILES[@]} ; do
      if [[ ! -e "${os_release}" ]]; then
          continue
      fi
      DISTRO=$(sed -rn 's/^NAME=(.+)/\1/p' ${os_release} | sed 's/"//g')
  done

  # echo "${DISTRO}"

  case $DISTRO in
      "Arch Linux"|"Manjaro Linux")
          MANAGER_QUERY="pacman -Q"
          MANAGER_INSTALL="pacman -S"
          UPDATE_PACKAGES="sudo pacman -Syy"
      ;;
      "Fedora")
          MANAGER_QUERY="dnf list installed"
          MANAGER_INSTALL="dnf install"
          UPDATE_PACKAGES="sudo dnf upgrade"
      ;;
      *"buntu"|"Linux Mint"|"Debian GNU/Linux"|"Zorin OS"|"Pop!_OS"|"elementary OS"|"KDE neon")
          MANAGER_QUERY="dpkg-query -s"
          MANAGER_INSTALL="apt install"
          UPDATE_PACKAGES="sudo apt update"
      ;;
      "openSUSE Leap"|"openSUSE Tumbleweed")

          PACKMAN_PKGS="libXNVCtrl-devel"
          MANAGER_QUERY="rpm -q"
          MANAGER_INSTALL="zypper install"
          UPDATE_PACKAGES="sudo zypper ref"
      ;;
      "Solus")
          unset MANAGER_QUERY
          unset DEPS
          MANAGER_INSTALL="eopkg it"
          UPDATE_PACKAGES="sudo eopkg upgrade"
          ;;
      *)
          echo "# Unable to find distro information!"
          echo "# Attempting to build regardless"
  esac
  # echo "${MANAGER_INSTALL}"
}

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

# GNU Nano
read -p 'Install GNU Nano? (Y/n) ' installnano
if [ $installnano == 'Y' ]
then
  echo 'Installing Nano...'
  sudo ${MANAGER_INSTALL} nano -y
else
  echo 'Skipping Nano install.'
fi

# Neofetch
read -p 'Install Neofetch? (Y/n) ' installneofetch
if [ $installneofetch == 'Y' ]
then
  echo 'Installing Neofetch...'
  sudo ${MANAGER_INSTALL} neofetch -y
else
  echo 'Skipping Neofetch install.'
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

# symlink for bashrc
rm ~/.bashrc
ln -s ~/.dotfiles/bash/bashrc ~/.bashrc
echo "bashrc symlink complete!"

# symlink for gitconfig
rm ~/.gitconfig
ln -s ~/.dotfiles/git/gitconfig ~/.gitconfig
echo "gitconfig symlink complete!"

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
