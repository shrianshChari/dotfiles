" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

" File Explorer
Plug 'scrooloose/NERDTree'

" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'

" Lightline statusline
Plug 'itchyny/lightline.vim'

" Useful Git tool
Plug 'tpope/vim-fugitive'

" Discord Rich Presence
Plug 'vimsence/vimsence'

" Rainbow brackets plugin
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle

" One dark theme
Plug 'joshdick/onedark.vim'

" Better Syntax Support
Plug 'sheerun/vim-polyglot'

" Proper Java Syntax
Plug 'uiiaoo/java-syntax.vim'

" Snippet engine to enable vim-snippets
Plug 'SirVer/ultisnips'
 
" Bunch of snippets (Show with Ctrl-L)
" https://github.com/honza/vim-snippets
Plug 'honza/vim-snippets'

" TypeScript Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
