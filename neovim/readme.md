### If you want to use regular vi
If you want to use this for regular vim, as opposed for neovim, here's what you should do:

```bash
cd
mkdir .vim

# Install syntax highlighting that I use
git clone https://github.com/joshdick/onedark.vim.git
mv onedark.vim/autoload .vim/
mv onedark.vim/colors .vim/
cd .vim/autoload

# Install Vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Some method of downloading neovim/snippets directory to computer from remote git repository

# Downloading Nerd font for vim-devicons
wget -P ~/.local/share/fonts/ https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DejaVuSansMono/Regular/complete/DejaVu%20Sans%20Mono%20Nerd%20Font%20Complete.ttf
```

Then use the `init.vim` file alongside the following snippet for complete configuration
```vim
" https://askubuntu.com/questions/42663/how-to-make-cursor-change-from-thin-line-to-block-based-on-normal-or-insert-mode
let &t_SI = "\<esc>[5 q"  " blinking I-beam in insert mode
let &t_SR = "\<esc>[3 q"  " blinking underline in replace mode
let &t_EI = "\<esc>[ q"  " default cursor (usually blinking block) otherwise
```

Or, to install the vimrc off a single script:
```bash
rm ~/.vimrc
wget -O ~/.vimrc https://raw.githubusercontent.com/shrianshChari/dotfiles/main/neovim/init.vim

echo "\n\" https://askubuntu.com/questions/42663/how-to-make-cursor-change-from-thin-line-to-block-based-on-normal-or-insert-mode" >> ~/.vimrc
echo "let &t_SI = \"\<esc>[5 q\"  \" blinking I-beam in insert mode" >> ~/.vimrc
echo "let &t_SR = \"\<esc>[3 q\"  \" blinking underline in replace mode" >> ~/.vimrc
echo "let &t_EI = \"\<esc>[ q\"  \" default cursor (usually blinking block) otherwise" >> ~/.vimrc

sed -i '64,240d' ~/.vimrc
sed -i 's/\/\.config\/nvim/\/\.vim/g' ~/.vimrc
```
