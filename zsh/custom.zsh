# Simple shortcut to SSH into Purdue servers
# If ur not in Purdue CS, you won't be able to ssh into it
schari() {
	ssh schari@${1:-mc18}.cs.purdue.edu
}

# Alias batcat to simply bat
if command -v batcat &> /dev/null
then
	alias bat="batcat"
fi

# Alias lsd to simply ls
if command -v lsd &> /dev/null
then
	alias ls="lsd"
fi

# Adds conda and Jupyter to PATH
if [[ -d ~/anaconda3/bin ]]
then
	export PATH=$PATH:~/anaconda3/bin
fi

# Flutter
if [[ -d ~/flutter/bin ]]
then
	export PATH=$PATH:~/flutter/bin
	export CHROME_EXECUTABLE=`which brave-browser`
fi

# Android Studio
if [[ -d ~/android-studio/bin ]]
then
	export PATH=$PATH:~/android-studio/bin
	export PATH=$PATH:~/Android/Sdk/tools/bin
fi

# Go 
if [[ -d /usr/local/go/bin ]]
then
	export PATH=$PATH:/usr/local/go/bin
fi


# Yarn
if [[ -d ~/.yarn/bin ]]
then
	export PATH=$PATH:~/.yarn/bin
fi

if [[ -d ~/.config/yarn/global/node_modules/.bin ]]
then
	export PATH=$PATH:~/.config/yarn/global/node_modules/.bin
fi

# Allows me to open nvim by using the nv command
if command -v nvim &> /dev/null
then
	alias nv="nvim"
	alias v="nvim"
fi

if [[ -d ~/.dotfiles/git/custom-scripts ]]
then
	export PATH=$PATH:~/.dotfiles/git/custom-scripts

	alias gpo='git push-origin'
fi

export PATH=$PATH:~/.local/bin/

# Allows me to exit zsh by typing in ':q'
alias :q="exit"

export TERM=xterm-256color
