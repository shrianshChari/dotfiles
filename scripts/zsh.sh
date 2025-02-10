#!/bin/bash

MANAGER_INSTALL="apt install"
DEB_INSTALL="dpkg -i"

# Installation of zsh
sudo ${MANAGER_INSTALL} zsh -y

# Installation of oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended

# zsh syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Create fonts dir if they don't exist
mkdir -p ~/.local/share/fonts

# Install Nerd Font for Vim-Devicons and Powerlevel10k
wget -P $HOME/.local/share/fonts/ https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/HackNerdFontMono-Regular.ttf
wget -P $HOME/.local/share/fonts/ https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Italic/HackNerdFontMono-Italic.ttf
wget -P $HOME/.local/share/fonts/ https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Bold/HackNerdFontMono-Bold.ttf
wget -P $HOME/.local/share/fonts/ https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/BoldItalic/HackNerdFontMono-BoldItalic.ttf

ln -s $HOME/.dotfiles/zsh/p10k.zsh $HOME/.p10k.zsh
ln -s $HOME/.dotfiles/zsh/custom.zsh $HOME/.oh-my-zsh/custom/

# Changing default shell
chsh -s $(which zsh)

# symlink for .zshrc
rm $HOME/.zshrc
ln -s $HOME/.dotfiles/zsh/rc.zsh $HOME/.zshrc
echo "zshrc symlink complete!"
