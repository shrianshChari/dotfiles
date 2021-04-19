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

### Additional housekeeping: ###
- Make sure that you run `:PlugStatus` the first time you run Neovim after running this script
- Enabling password asterisks:
  - In the terminal, enter `sudo visudo`
  - Enter `Defaults{tab}pwfeedback`
  - Save the file, exit the file editor, exit the terminal

### To-Do: ###
- ~~Change script to install NVM instead of just NodeJS~~
- Update Eclipse to install from snap or using their tarball
- Test whether the snap packages work now

### Installed Packages: ###
- [Atom](https://atom.io) (apt)
- [Brave Browser](htpps://brave.com) (apt)
- [Discord](https://discord.com) (apt)
- [Eclipse](https://eclipse.org) (apt)
- ~~[GNU Nano](https://nano-editor.org "Rendered obsolete in the face of Neovim") (apt)~~
- [Neofetch](https://github.com/dylanaraps/neofetch) (apt)
- [Neovim](https://neovim.io) and [vim-plug](https://github.com/junegunn/vim-plug "Plugin manager for Neovim") (apt)
- [NVM](https://github.com/nvm-sh/nvm) (curl script)
- [Steam](https://store.steampowered.com) (apt)
- [Tilix](https://gnunn1.github.io/tilix-web/) (apt)
- [Gnome Tweaks](https://wiki.gnome.org/Apps/Tweaks) (apt)
- [Zsh](http://zsh.sourceforge.net) and [Oh My Zsh](https://ohmyz.sh/ "Plugin manager for zsh") (apt)
- [Snap](https://snapcraft.io) (apt)
- [Bitwarden](https://bitwarden.com) (snap)
- [FromScratch](https://fromscratch.rocks) (snap)
- [Slack](https://slack.com) (snap)
- [Zoom](https://zoom.us) (snap)
