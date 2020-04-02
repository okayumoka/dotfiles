"------------------------------------------------------------------------------
" colorscheme config
"------------------------------------------------------------------------------

if has('gui_running')
  " gvim
  if has('termguicolors')
    set termguicolors
  endif
else
  " cui vim
  if has('win32')
    "set term=xterm
    "set t_Co=256
    "let &t_AB="\e[48;5;%dm"
    "let &t_AF="\e[38;5;%dm"
  else
    " other
    set t_Co=256
    if has('termguicolors') && $COLORTERM == "truecolor"
      set termguicolors
      if !has('nvim')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
      endif
    endif
  endif
endif


function! s:set_colorscheme(name) abort
  execute 'colorscheme' a:name
  if has('gui_running') || has("termguicolors")
    highlight specialkey term=none cterm=none gui=none
  else
    highlight specialkey term=none cterm=none
  endif
endfunction

set background=dark

" solarized
" autocmd ColorScheme * highlight SpecialKey term=none cterm=none ctermfg=11 ctermbg=8
" let g:solarized_visibility="low"
" let g:solarized_termtrans=1
" let g:solarized_termcolors=256
" call s:set_colorscheme('solarized8')

" molokai
" call s:set_colorscheme('molokai')
"
" jellybeans
" call s:set_colorscheme('jellybeans')

" tender
" call s:set_colorscheme('tender')

" iceberg
" call s:set_colorscheme('iceberg')

" hybrid
" call s:set_colorscheme('hybrid')

" onedark
" call s:set_colorscheme('onedark')

" dracla
" call s:set_colorscheme('dracula')

" PaperColor
" call s:set_colorscheme('PaperColor')

" jummidark
call s:set_colorscheme('jummidark')

" Nord
call s:set_colorscheme('nord')

