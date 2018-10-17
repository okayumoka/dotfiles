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
	\   'absolutepath': 'LightLineAbsolutePath',
	\   'fugitive': 'LightlineFugitive'
	\ },
	\ 'separator': { 'left': "\u2b80", 'right': "\u2b82" },
  \ 'subseparator': { 'left': "\u2b81", 'right': "\u2b83" },
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

function! LightlineFugitive()
  if exists('*fugitive#head')
    let branch = fugitive#head()
    return branch !=# '' ? "\u2b60".branch : ''
  endif
  return ''
endfunction

