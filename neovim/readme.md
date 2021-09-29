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

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

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

" Plugins to be loaded
call plug#begin('~/.vim/autoload/plugged')

" File Explorer
Plug 'scrooloose/NERDTree'

" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'

" Lightline statusline
Plug 'itchyny/lightline.vim'

" Useful Git tool
Plug 'tpope/vim-fugitive'

" One dark theme
Plug 'joshdick/onedark.vim'

" Better Syntax Support
Plug 'sheerun/vim-polyglot'

" Proper Java Syntax
Plug 'uiiaoo/java-syntax.vim'
call plug#end()
```
