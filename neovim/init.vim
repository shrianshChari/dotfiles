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

" Configuration for vim-javacomplete2
" https://github.com/artur-shaik/vim-javacomplete2
autocmd FileType java setlocal omnifunc=javacomplete#Complete

nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)

imap <F4> <Plug>(JavaComplete-Imports-AddSmart)

nmap <F5> <Plug>(JavaComplete-Imports-Add)

imap <F5> <Plug>(JavaComplete-Imports-Add)

nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)

imap <F6> <Plug>(JavaComplete-Imports-AddMissing)

nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
 
imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)

" Configuration for UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
" list all snippets for current filetype
let g:UltiSnipsListSnippets="<c-l>"


" For adding vim-plug to NeoVim
source $HOME/.config/nvim/vim-plug/plugins.vim

" New color scheme
source $HOME/.config/nvim/themes/onedark.vim
