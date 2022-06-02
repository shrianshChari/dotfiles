" load configuratoin files
function s:load(file)
  let l:path = '~/.vim/config/'
  exec 'source ' . l:path . a:file
endfunction

" Load settings
call s:load('settings.vim')

" Load plugins
call s:load('plugins.vim')

" lightline configuration
call s:load('lightline.vim')

" NERDTree configuration
call s:load('nerdtree.vim')

" rainbow configuration 
call s:load('rainbow.vim')

" Minimap.vim configuration
call s:load('minimap.vim')

" Vim Markdown configuration
call s:load('markdown.vim')

" onedark colorscheme configuration
call s:load('onedark.vim')

" Useful functions I wrote
call s:load('functions.vim')
