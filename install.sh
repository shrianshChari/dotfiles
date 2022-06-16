#!/bin/bash

# This file should have permission to be executed.
# Just run `chmod +x install.sh` to do so.

# You should also have root access of the new computer

UPDATE_PACKAGES="sudo apt update"
MANAGER_INSTALL="apt install"
DEB_INSTALL="dpkg -i"

read -p 'Update packages? (Y/n) ' updatepackages
# read -p 'Install Atom? (Y/n) ' installatom
read -p 'Install Brave Browser? (Y/n) ' installbrave
read -p 'Install Discord? (Y/n) ' installdiscord
read -p 'Install Kitty? (Y/n) ' installkitty
read -p 'Install Modern Unix scripts? (Y/n) ' installmu
read -p 'Install Neofetch? (Y/n) ' installneofetch
read -p 'Install Vim/Neovim? (Y/n) ' installvimnvim
read -p 'Install NVM? (Y/n) ' installnode
read -p 'Install Steam? (Y/n) ' installsteam
# read -p 'Install Tilix? (Y/n) ' installtilix
read -p 'Install GNOME Tweaks? (Y/n) ' installtweaks
read -p 'Install zsh? (Y/n) ' installzsh

if [[ $updatepackages == 'Y' || $updatepackages == 'y' ]]; then
	echo 'Updating packages...'
	$UPDATE_PACKAGES
else
	echo 'Skipping updating packages...'
fi

# Atom
if [[ $installatom == 'Y' || $installatom == 'y' ]]; then
	echo 'Installing Atom...'
	sudo ${MANAGER_INSTALL} atom -y
	python3 atom/install.py

	# symlink for config.cson
	rm $HOME/.atom/config.cson
	ln -s $HOME/.dotfiles/atom/config.cson $HOME/.atom/config.cson
	echo "Atom config.cson symlink complete!"

	if [[ -d "$HOME/.atom/packages/script/lib/grammars" ]]; then

		cp $HOME/.dotfiles/atom/python.js $HOME/.atom/packages/script/lib/grammars
	fi
else
	echo 'Skipping Atom install.'
fi

# Brave Browser
if [[ $installbrave == 'Y' || $installbrave == 'y' ]]; then
	echo 'Installing Brave Browser...'
	sudo apt install apt-transport-https curl
	sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
	echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
	sudo apt update
	sudo ${MANAGER_INSTALL} brave-browser -y
else
	echo 'Skipping Brave Browser install.'
fi

# Discord
if [[ $installdiscord == 'Y' || $installdiscord == 'y' ]]; then
	echo 'Installing Discord...'
	sudo ${MANAGER_INSTALL} discord -y
else
	echo 'Skipping Discord install.'
fi

# Eclipse
# read -p 'Install Eclipse? (Y/n) ' installeclipse
if [[ $installeclipse == 'Y' || $installeclipse == 'y' ]]; then
	echo 'Installing Eclipse...'
	sudo ${MANAGER_INSTALL} eclipse -y
else
	echo 'Skipping Eclipse install.'
fi

# Kitty
if [[ $installkitty == 'Y' || $installkitty == 'y' ]]; then
	echo 'Installing Kitty...'
	
	bash ./scripts/kitty.sh
else
	echo 'Skipping Kitty install.'
fi

# Modern Unix
if [[ $installmu == 'Y' || $installmu == 'y' ]]; then
	echo 'Installing Modern Unix...'

	# bat
	sudo ${MANAGER_INSTALL} bat -y

	# git-delta
	bash ./scripts/git-delta.sh

	# htop
	sudo ${MANAGER_INSTALL} htop -y
		
	# lsd
	bash ./scripts/lsd.sh

	# tree
	sudo ${MANAGER_INSTALL} tree -y
else
	echo 'Skipping Modern Unix install.'
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
if [[ $installneofetch == 'Y' || $installneofetch == 'y' ]]; then
	echo 'Installing Neofetch...'

	sudo ${MANAGER_INSTALL} neofetch -y
else
	echo 'Skipping Neofetch install.'
fi

# Neovim
if [[ $installvimnvim == 'Y' || $installvimnvim == 'y' ]]; then
	read -p 'Install Neovim? (Y/n) ' installneovim

	if [[ $installneovim == 'Y' || $installneovim == 'y' ]]; then
		echo 'Installing Neovim...'

		bash ./scripts/code-minimap.sh
		bash ./scripts/nvim.sh
	else
		echo 'Installing vim...'

		bash ./scripts/code-minimap.sh
		bash ./scripts/vim.sh
	fi
else
	echo "Skpping editor install"
fi


# NVM
if [[ $installnode == 'Y' || $installnode == 'y' ]]; then
	echo 'Installing NVM...'
	curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
	nvm install node
else
	echo 'Skipping NVM install.'
fi

# Steam
if [[ $installsteam == 'Y' || $installsteam == 'y' ]]; then
	echo 'Installing Steam...'
	sudo ${MANAGER_INSTALL} steam -y
else
	echo 'Skipping Steam install.'
fi

# Tilix
if [[ $installtilix == 'Y' || $installtilix == 'y' ]]; then
	echo 'Installing Tilix...'
	sudo ${MANAGER_INSTALL} tilix -y
	sudo update-alternatives --config x-terminal-emulator
else
	echo 'Skipping Tilix install.'
fi

# GNOME Tweaks
if [[ $installtweaks == 'Y' || $installtweaks == 'y' ]]; then
	echo 'Installing GNOME Tweaks...'
	sudo ${MANAGER_INSTALL} gnome-tweaks -y
else
	echo 'Skipping GNOME Tweaks install.'
fi

if [ ! command -v snap &> /dev/null ]; then
	# Snap
	read -p 'Install snap? (Y/n) ' installsnap
	if [ $installsnap == 'Y' || $installsnap == 'y' ]; then
		sudo $MANAGER_INSTALL snapd
	fi

	if [ ! command -v snap &> /dev/null ]; then
		# Slack
		read -p 'Install Slack? (Y/n) ' installslack
		if [ $installslack == 'Y' || $installslack == 'y' ]
		then
			echo 'Installing Slack...'
			sudo snap install slack
		else
			echo 'Skipping Slack install.'
		fi

		# Bitwarden
		read -p 'Install Bitwarden? (Y/n) ' installbitwarden
		if [ $installbitwarden == 'Y' || $installbitwarden == 'y' ]
		then
			echo 'Installing Bitwarden...'
			sudo snap install bitwarden
		else
			echo 'Skipping Bitwarden install.'
		fi

		# FromScratch
		read -p 'Install FromScratch? (Y/n) ' installfromscratch
		if [ $installfromscratch == 'Y' || $installfromscratch == 'y' ]
		then
			echo 'Installing FromScratch...'
			sudo snap install fromscratch
		else
			echo 'Skipping FromScratch install.'
		fi
	fi

	# Zoom
	read -p 'Install Zoom? (Y/n) ' installzoom
	if [ $installzoom == 'Y' || $installzoom == 'y' ]
	then
		echo 'Installing Zoom...'
		sudo snap install zoom
	else
		echo 'Skipping Zoom install.'
	fi
fi


# symlink for gitconfig
rm $HOME/.gitconfig
ln -s $HOME/.dotfiles/git/gitconfig $HOME/.gitconfig
echo "gitconfig symlink complete!"

# installation of zsh, symlink for zsh/bash config files
if [[ $installzsh == 'Y' || $installzsh == 'y' ]]; then
	echo "Using zsh..."

	bash ./scripts/zsh.sh
else
	echo "Using bash..."

	# Compatitbility with Tilix
	if [[ $installtilix ]]; then
		# symlink for bashrc
		sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
		rm $HOME/.bashrc
		ln -s $HOME/.dotfiles/bash/bashrctilix $HOME/.bashrc
		echo "bashrc symlink complete!"
	else
		# symlink for bashrc
		rm $HOME/.bashrc
		ln -s $HOME/.dotfiles/bash/bashrc $HOME/.bashrc
		echo "bashrc symlink complete!"
	fi

	if [ -e "$HOME/.bash_profile" ];
	then
		# symlink for bash_profile
		rm $HOME/.bash_profile
		ln -s $HOME/.dotfiles/bash/profile $HOME/.bash_profile
		echo "bash_profile symlink complete!"
	else
		# symlink for profile
		rm $HOME/.profile
		ln -s $HOME/.dotfiles/bash/profile $HOME/.profile
		echo "profile symlink complete!"
	fi
fi
