# dotfiles #

<hr>

### Prerequisites: ###
- You are installing on Linux (presumably Debian/Ubuntu-based distros)
- You already have installed `git`.

### Installation: ###
1. Clone the repo into home folder<br>
<code>git clone https://<span></span>github.com/shrianshChari/dotfiles.git ~/.dotfiles</code>
2. Navigate to the folder that contains the repo<br>
<code>cd ~/.dotfiles</code>
3. Execute the installation script with root perms<br>
<code>sudo ./install.sh</code>

### Completed: ###
- Scripts that install packages from `apt` and `snap`
- Installation of Atom packages
- Created symlinks for `bashrc`, `gitconfig`, and either `bash_profile` or `profile`
- Stopped bothering with other package managers, focused only on `apt` and `snap`
- Made updating packages optional
