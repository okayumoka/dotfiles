"------------------------------------------------------------------------------
" lightline.vim config
"------------------------------------------------------------------------------

let g:lightline = {
	\ 'colorscheme': 'one',
	\ 'separator': { 'left': '・ω)っ' },
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
	\             [ 'fugitive', 'readonly', 'absolutepath', 'modified' ] ],
	\ },
	\ 'component_function': {
	\   'absolutepath': 'LightLineAbsolutePath'
	\ },
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


