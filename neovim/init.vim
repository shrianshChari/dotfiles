set showmatch
set mouse=v
set tabstop=2
set shiftwidth=2
set autoindent
set number
set hlsearch
set noshowmode
set laststatus=2

:syntax enable

" lightline configuration
" https://github.com/itchyny/lightline.vim
let g:lightline = {
	\ 'colorscheme': 'one',
	\ }

" For adding vim-plug to NeoVim
source $HOME/.config/nvim/vim-plug/plugins.vim

" New color scheme
source $HOME/.config/nvim/themes/onedark.vim
