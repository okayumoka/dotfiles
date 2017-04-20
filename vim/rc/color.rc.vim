"------------------------------------------------------------------------------
" colorscheme config


function! s:set_colorscheme(name) abort
	execute 'colorscheme' a:name
endfunction


"------------------------------------------------------------------------------

" solarized

"set background=dark
"autocmd ColorScheme * highlight SpecialKey term=none cterm=none ctermfg=11 ctermbg=8
"call s:set_colorscheme('solarized')
"let g:solarized_visibility="low"
"let g:solarized_termtrans=1


"------------------------------------------------------------------------------

" molokai

call s:set_colorscheme('molokai')
highlight specialkey term=none cterm=none

