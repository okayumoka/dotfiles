"------------------------------------------------------------------------------
" lightline.vim config
"------------------------------------------------------------------------------

let g:lightline = {
	\ 'colorscheme': 'one',
  \ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'fugitive', 'readonly', 'absolutepath', 'modified' ] ],
	\ },
	\ 'component_function': {
	\   'absolutepath': 'LightLineAbsolutePath'
	\ },
  \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
  \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
\ }

function! LightLineAbsolutePath()
	let a = substitute(expand('%:p'), $HOME, '~', '')
	if a == ""
		return 'null'
	elseif strlen(a) > 40
		return a[strlen(a)-40:]
	else
		return a
	endif
endfunction


