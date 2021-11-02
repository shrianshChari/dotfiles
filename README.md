# dotfiles #

<hr>

### Prerequisites: ###
- You are installing on Linux (presumably Debian/Ubuntu-based distros)
- You already have installed `git`.

### Installation: ###
```bash
# 1. Clone the repo into home folder
git clone https://github.com/shrianshChari/dotfiles.git ~/.dotfiles

# 2. Navigate to the folder that contains the repo
cd ~/.dotfiles

# 3. Execute the installation script with root perms
sudo ./install.sh
```

### Completed: ###
- Scripts that install packages from `apt` and `snap`
- Installation of Atom packages
- Created symlinks for `bashrc`, `gitconfig`, and either `bash_profile` or `profile`
- Stopped bothering with other package managers, focused only on `apt` and `snap`
- Made updating packages optional

### Additional housekeeping: ###
- Make sure that you run `:PlugStatus` and `:CocInstall coc-json coc-tsserver` the first time you run Neovim after running this script
- Enabling password asterisks:
  - In the terminal, enter `sudo visudo`
  - Enter `Defaults{tab}pwfeedback`
  - Save the file, exit the file editor, exit the terminal
- Add [bookmarks](https://gist.github.com/shrianshChari/791f5cb4422b0a9b4b4d2b7229e318e3#file-bookmarks-html) to browser.

### To-Do: ###
- [x] Change script to install NVM instead of just NodeJS
- [ ] Update Eclipse to install from snap or using their tarball
- [ ] Test whether the snap packages work now
- [x] Make the installer ask all the questions at the beginning
- [x] Consolidate all vim config files into only one file (move `plugin.vim` into `init.vim`)
- [ ] Figure out how to download a folder from a remote git repository (probably by downloading a zip file)

### Installed Packages: ###
- [Atom](https://atom.io) (apt)
- [Brave Browser](https://brave.com) (apt)
- [Discord](https://discord.com) (apt)
- [Eclipse](https://eclipse.org) (apt)
- [Kitty](https://sw.kovidgoyal.net/kitty/)
- ~~[GNU Nano](https://nano-editor.org "Rendered obsolete in the face of Neovim") (apt)~~
- [Neofetch](https://github.com/dylanaraps/neofetch) (apt)
- [Neovim](https://neovim.io "Configuration now supports regular vi") and [vim-plug](https://github.com/junegunn/vim-plug "Plugin manager for Neovim") (apt)
- [NVM](https://github.com/nvm-sh/nvm) (curl script)
- [Steam](https://store.steampowered.com) (apt)
- ~~[Tilix](https://gnunn1.github.io/tilix-web/ "Switched to using Kitty as my terminal emulator") (apt)~~
- [Gnome Tweaks](https://wiki.gnome.org/Apps/Tweaks) (apt)
- [Zsh](http://zsh.sourceforge.net) and [Oh My Zsh](https://ohmyz.sh/ "Plugin manager for zsh") (apt)
- [Snap](https://snapcraft.io) (apt)
- [Bitwarden](https://bitwarden.com) (snap)
- [FromScratch](https://fromscratch.rocks) (snap)
- [Slack](https://slack.com) (snap)
- [Zoom](https://zoom.us) (snap)
