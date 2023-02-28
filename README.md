<!--- Funny big text thanks to figlet --->
```
         __         _                  __    ________               _
   _____/ /_  _____(_)___ _____  _____/ /_  / ____/ /_  ____ ______(_)
  / ___/ __ \/ ___/ / __ `/ __ \/ ___/ __ \/ /   / __ \/ __ `/ ___/ /
 (__  ) / / / /  / / /_/ / / / (__  ) / / / /___/ / / / /_/ / /  / /
/____/_/ /_/_/  /_/\__,_/_/ /_/____/_/ /_/\____/_/ /_/\__,_/_/  /_/
       __      __  _____ __
  ____/ /___  / /_/ __(_) /__  _____
 / __  / __ \/ __/ /_/ / / _ \/ ___/
/ /_/ / /_/ / /_/ __/ / /  __(__  )
\__,_/\____/\__/_/ /_/_/\___/____/
```
<hr>

### Prerequisites:
- You are installing on Linux (presumably Debian/Ubuntu-based distros)
- You already have installed `git`.

### Installation:
```bash
# 1. Clone the repo into home folder
git clone https://github.com/shrianshChari/dotfiles.git ~/.dotfiles # HTTPS

# OR
git clone git@github.com:shrianshChari/dotfiles.git ~/.dotfiles # SSH

# 2. Navigate to the folder that contains the repo
cd ~/.dotfiles

# 3. Execute the installation script with root perms
sudo ./install.sh
```

### Completed:
- Scripts that install packages from `apt` and `snap`
- Installation of Atom packages
- Created symlinks for `bashrc`, `gitconfig`, and either `bash_profile` or `profile`
- Stopped bothering with other package managers, focused only on `apt` and `snap`
- Made updating packages optional

### Additional housekeeping:
- Make sure that you run `:PlugStatus` (if using Vim) or `:PackerInstall` (if using Neovim)
- Enabling password asterisks:
  - In the terminal, enter `sudo visudo`
  - Enter `Defaults{tab}pwfeedback`
  - Save the file, exit the file editor, exit the terminal
- Add [bookmarks](https://gist.github.com/shrianshChari/791f5cb4422b0a9b4b4d2b7229e318e3#file-bookmarks-html) to browser.
- Follow [these instructions](https://gist.github.com/andrebrait/961cefe730f4a2c41f57911e6195e444) to get Keychron keyboard set up properly

### To-Do: ###
- [ ] Update Eclipse to install from snap or using their tarball
- [ ] Test whether the snap packages work now
- [ ] Figure out how to download a folder from a remote git repository (probably by downloading a zip file)
- [ ] Add script to configure ssh key for GitHub
- [x] Separate configuration files into separate files (init.vim -> plugin.vim, config.vim, etc.)
- [x] Set up ~~brew~~, neovim, git-delta, tree installation
- [ ] ~~Move more installs to brew so that I'm less dependent on apt~~
- [x] Finish migrating to init.lua (namely LSP client)
- [x] Install all the Nerd fonts in one go from install script
- [x] Figure out all of my neovim keybinds and document them somewhere

### Installed Packages: ###
- ~~[Atom](https://atom.io "Retired because of Neovim") (apt)~~
- [Brave Browser](https://brave.com) (apt)
- [Discord](https://discord.com) (apt)
- [Eclipse](https://eclipse.org) (apt)
- [Kitty](https://sw.kovidgoyal.net/kitty/) (apt)
- [Modern Unix Scripts:](https://github.com/ibraheemdev/modern-unix)
  - [`bat`](https://github.com/sharkdp/bat) (apt)
  - [`delta`](https://github.com/dandavison/delta) (deb)
  - [`htop`](https://htop.dev/) (apt)
  - [`lsd`](https://github.com/Peltoche/lsd) (deb)
  - [`tree`](http://mama.indstate.edu/users/ice/tree/) (apt)
- ~~[GNU Nano](https://nano-editor.org "Rendered obsolete in the face of Neovim") (apt)~~
- [Neofetch](https://github.com/dylanaraps/neofetch) (apt)
- [Neovim](https://neovim.io "Configuration now supports regular vi") and [vim-plug](https://github.com/junegunn/vim-plug "Plugin manager for Neovim") (apt)
- [NVM](https://github.com/nvm-sh/nvm) (curl script)
- [Steam](https://store.steampowered.com) (apt)
- ~~[Tilix](https://gnunn1.github.io/tilix-web/ "Switched to using Kitty as my terminal emulator") (apt)~~
- [Tmux](https://tmux.github.io/) (apt)
- [Gnome Tweaks](https://wiki.gnome.org/Apps/Tweaks) (apt)
- [Zsh](http://zsh.sourceforge.net) and [Oh My Zsh](https://ohmyz.sh/ "Plugin manager for zsh") (apt)
- [Snap](https://snapcraft.io) (apt)
- [Bitwarden](https://bitwarden.com) (snap)
- [FromScratch](https://fromscratch.rocks) (snap)
- [Slack](https://slack.com) (snap)
- [Zoom](https://zoom.us) (snap)
