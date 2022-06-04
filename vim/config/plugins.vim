" Use vim-plug to manage plugins

" auto-install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/autoload/plugged')

Plug 'preservim/nerdtree' " File Explorer
Plug 'Xuyuanp/nerdtree-git-plugin' " Git symbols for NERDTree
Plug 'ryanoasis/vim-devicons' " NERDTree file icons
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " NerdTree File icon colors

" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'

" Lightline statusline
Plug 'itchyny/lightline.vim'

" Discord Rich Presence
Plug 'vimsence/vimsence'

" Rainbow brackets plugin
Plug 'luochen1990/rainbow'

" One dark theme
Plug 'joshdick/onedark.vim'

" Better Syntax Support
Plug 'sheerun/vim-polyglot'

" kitty.conf highlighting
Plug 'fladson/vim-kitty'

" Fugitive Git integration
Plug 'tpope/vim-fugitive'

" Shows Git differences in editor
Plug 'airblade/vim-gitgutter'

" Indentation markers for space indentation
Plug 'Yggdroot/indentLine'

" Minimap for vim
" Plug 'wfxr/minimap.vim'
call plug#end()

