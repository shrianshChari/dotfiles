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

" One dark theme
Plug 'joshdick/onedark.vim'

" Better Syntax Support
Plug 'sheerun/vim-polyglot'

" Proper Java Syntax
Plug 'uiiaoo/java-syntax.vim'
call plug#end()
