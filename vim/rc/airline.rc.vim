"------------------------------------------------------------------------------
" airline.vim config
"------------------------------------------------------------------------------

let g:airline_powerline_fonts = 1

let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = "⮀"
let g:airline#extensions#tabline#left_alt_sep = "⮁"
let g:airline#extensions#tabline#right_sep = "⮂"
let g:airline#extensions#tabline#right_alt_sep = "⮃"

" https://github.com/vim-airline/vim-airline/wiki/Screenshots
" let g:airline_theme = 'bubblegum'
let g:airline_theme = 'deus'

" let g:airline#extensions#default#layout = [
"	\ [ 'z', 'y', 'x' ],
"	\ [ 'c', 'b', 'a', 'error', 'warning']
"	\ ]

" default
"   left
"     A : mode, crypt, paste, spell, iminsert
"     B : hunks, branch
"     C : bufferline または filename
"   right
"     X : tagbar, filetype, virtualenv
"     Y : fileencoding, fileformat
"     Z : percentage, line number, column number

