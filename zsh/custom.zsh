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
