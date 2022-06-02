" Useful functions I wrote

" Defines the following window structure
" ______________________________
" |      |                      |
" |  N   |                      |
" |  E   |       editor 1       |
" |  R   |                      |
" |  D   |                      |
" |  T   |----------------------|
" |  r   |          |     t     |
" |  e   |  editor  |     e     |
" |  e   |    2     |     r     |
" |      |          |     m     |
" -------------------------------
" Remember that ctrl w + hjkl helps you navigate between windows
" Call functions with :call HMain()
function HMain()
  NERDTreeFocus
  wincmd l
  sp
  wincmd j
  vsp
  wincmd l
  term
  wincmd j
  quit
  wincmd k
endfunction

" Defines the following window structure
" ______________________________
" |      |          |           |
" |  N   |          |   editor  |
" |  E   |          |     2     |
" |  R   |  editor  |           |
" |  D   |    1     |           |
" |  T   |          |-----------|
" |  r   |          |     t     |
" |  e   |          |     e     |
" |  e   |          |     r     |
" |      |          |     m     |
" -------------------------------
" Remember that ctrl w + hjkl helps you navigate between windows
" Call functions with :call VMain()
function VMain()
  NERDTreeFocus
  wincmd l
  vsp
  wincmd l
  sp
  wincmd j
  term
  wincmd j
  quit
  wincmd h
endfunction

" Defines the following window structure
" ___________________
" |      |           |
" |  N   |   editor  |
" |  E   |     2     |
" |  R   |           |
" |  D   |           |
" |  T   |-----------|
" |  r   |     t     |
" |  e   |     e     |
" |  e   |     r     |
" |      |     m     |
" --------------------
" Remember that ctrl w + hjkl helps you navigate between windows
" Call functions with :call MainHalf()
function MainHalf()
  NERDTreeFocus
  wincmd l
  sp
  wincmd j
  term
  wincmd j
  quit
  wincmd k
endfunction

" CS240 Work Environment (thanks Theo!)
" You need to call it with the name of the folder, not the homework number
" AKA run `:call CS240('hw1')`, not `:call CS240(1)`
function CS240(hwNum)
  exec 'cd' . $HOME. '/cs240/' . a:hwNum . '/'
  NERDTreeFocus
  wincmd l
  set colorcolumn=81
  vsp
  execute 'e ' . $HOME . '/cs240/' .a:hwNum. '/' .a:hwNum. '.c'
  wincmd l
  sp
  execute 'e ' . $HOME . '/cs240/' .a:hwNum. '/' .a:hwNum. '.h'
  wincmd j
  term
  wincmd h
  5 wincmd >
endfunction
