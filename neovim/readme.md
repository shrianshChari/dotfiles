### If you want to use regular vi
If you want to use this for regular vim, as opposed for neovim, here's what you should do:

```bash
cd
mkdir .vim
git clone https://github.com/joshdick/onedark.vim.git
mv onedark.vim/autoload .vim/
mv onedark.vim/colors .vim/```

Then use this vimrc file for complete configuration
```vim
set showmatch
set mouse=v
set tabstop=2
set shiftwidth=2
set autoindent
set number
set expandtab
set hlsearch

syntax on
colorscheme onedark
```
