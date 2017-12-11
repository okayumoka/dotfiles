"------------------------------------------------------------------------------
" colorscheme config
"------------------------------------------------------------------------------

set t_Co=256        " 256色ターミナルでVimを使用する
if (has("termguicolors"))
	set termguicolors
endif

function! s:set_colorscheme(name) abort
	execute 'colorscheme' a:name
	if has('gui_running') || has("termguicolors")
		highlight specialkey term=none cterm=none gui=none
	else
		highlight specialkey term=none cterm=none
	endif
endfunction


"--------------------------------------------------------
" solarized
"--------------------------------------------------------
"set background=dark
"autocmd ColorScheme * highlight SpecialKey term=none cterm=none ctermfg=11 ctermbg=8
"call s:set_colorscheme('solarized')
"let g:solarized_visibility="low"
"let g:solarized_termtrans=1


"--------------------------------------------------------
" molokai
"--------------------------------------------------------
" call s:set_colorscheme('molokai')


"--------------------------------------------------------
" tender
"--------------------------------------------------------
" call s:set_colorscheme('tender')


"--------------------------------------------------------
" iceberg
"--------------------------------------------------------
call s:set_colorscheme('iceberg')

