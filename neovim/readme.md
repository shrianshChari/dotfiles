### If you want to use regular vi
If you want to use this for regular vim, as opposed for neovim, here's what you should do:

```bash
vi -v
# Ensure that you are using Vim8, since this uses its package manager

cd
mkdir .vim
git clone https://github.com/joshdick/onedark.vim.git
mv onedark.vim/autoload .vim/
mv onedark.vim/colors .vim/
cd .vim
mkdir -p pack/{plugins,syntax}/start
cd pack/plugins/start

# Autocompleting parentheses, quotations, etc.
git clone https://github.com/jiangmiao/auto-pairs.git

# Adding a cool statusline to the bottom of the screen
git clone https://github.com/itchyny/lightline.vim.git

# Useful file explorer within vim
git clone https://github.com/preservim/nerdtree.git

cd ~/.vim/pack/syntax/start

# Language syntax pack
git clone https://github.com/sheerun/vim-polyglot.git

# Syntax highlighting for Java
git clone https://github.com/uiiaoo/java-syntax.vim.git
```

Then use this vimrc file for complete configuration
```vim
set showmatch
set mouse=v
set tabstop=2
set shiftwidth=2
set autoindent
set number
set hlsearch
set noshowmode
set laststatus=2

syntax on
colorscheme onedark

" lightline configuration
" https://github.com/itchyny/lightline.vim
let g:lightline = {
	\ 'colorscheme': 'one',
	\ }

" https://askubuntu.com/questions/42663/how-to-make-cursor-change-from-thin-line-to-block-based-on-normal-or-insert-mode
let &t_SI = "\<esc>[5 q"  " blinking I-beam in insert mode
let &t_SR = "\<esc>[3 q"  " blinking underline in replace mode
let &t_EI = "\<esc>[ q"  " default cursor (usually blinking block) otherwise
```
