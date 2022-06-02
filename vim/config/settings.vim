" Settings
set showmatch " Briefly jumps to matching bracket
set mouse=a " Can click around w/ mouse
set tabstop=2 " # of spaces that a tab is
set shiftwidth=2 " # of spaces for each step of autoindent
set autoindent " Take indentation from prev line in new line
set number " Line numbers
set hlsearch " Highlights all matches when searching
set noshowmode " Don't need to show mode bc statusline
set laststatus=2 " Always show statusline
set noexpandtab " Don't insert spaces when you press tab

" Set what characters each tab will look like
set listchars=tab:\¦\ 
set list " Display tab characters

" Reveals where the 81st column is so that you don't go past it
set colorcolumn=81

:syntax enable " Enable syntax highlighting

" https://askubuntu.com/questions/42663/how-to-make-cursor-change-from-thin-line-to-block-based-on-normal-or-insert-mode
let &t_SI = "\<esc>[5 q"  " blinking I-beam in insert mode
let &t_SR = "\<esc>[3 q"  " blinking underline in replace mode
let &t_EI = "\<esc>[ q"  " default cursor (usually blinking block) otherwise

" Fixes ability to exit terminal in Neovim
" tnoremap <Esc> <C-\><C-n>

" Ctrl C to copy to system clipboard
vnoremap <C-c> "+y

" Ctrl X to cut to system clipboard
vnoremap <C-x> "+d
