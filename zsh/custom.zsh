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
if command -v batcat &> /dev/null
then
	alias ls="lsd"
fi

# Adds conda and Jupyter to PATH
if [[ -d ~/anaconda3/bin ]]
then
	export PATH=$PATH:~/anaconda3/bin
fi

# Allows me to exit zsh by typing in ':q'
alias :q="exit"

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

# Yarn
if [[ -d ~/.yarn/bin ]]
then
	export PATH=$PATH:~/.yarn/bin
fi

if [[ -d ~/.config/yarn/global/node_modules/.bin ]]
then
	export PATH=$PATH:~/.config/yarn/global/node_modules/.bin
fi

export TERM=xterm-256color
