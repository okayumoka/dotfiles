"------------------------------------------------------------------------------
" lightline.vim config
"------------------------------------------------------------------------------


" ↓デフォルトのコンポーネント
" let g:lightline.component = {
"  \ 'mode': '%{lightline#mode()}',
"  \ 'absolutepath': '%F',
"  \ 'relativepath': '%f',
"  \ 'filename': '%t',
"  \ 'modified': '%M',
"  \ 'bufnum': '%n',
"  \ 'paste': '%{&paste?"PASTE":""}',
"  \ 'readonly': '%R',
"  \ 'charvalue': '%b',
"  \ 'charvaluehex': '%B',
"  \ 'fileencoding': '%{strlen(&fenc)?&fenc:&enc}',
"  \ 'fileformat': '%{&fileformat}',
"  \ 'filetype': '%{strlen(&filetype)?&filetype:"no ft"}',
"  \ 'percent': '%3p%%',
"  \ 'percentwin': '%P',
"  \ 'lineinfo': '%3l:%-2v',
"  \ 'line': '%l',
"  \ 'column': '%c'
"  \ 'close': '%999X X ' }


let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left':  [ [ 'mode', 'paste' ],
      \              [ 'fugitive', 'readonly', 'absolutepath', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ],
      \              [ 'lineinfo2' ],
      \              [ 'fileformat', 'fileencoding', 'filetype' ] ],
      \ },
      \ 'inactive': {
      \   'left':  [ [ 'fugitive', 'readonly', 'absolutepath', 'modified' ] ],
      \   'right': [ [ 'lineinfo2', 'lineinfo' ],
      \              [ 'filetype' ] ]
      \ },
      \ 'component': {
      \   'rows': '%L',
      \   'lineinfo2': '%3p%%(%l/%L)',
      \ },
      \ 'component_function': {
      \   'absolutepath': 'LightLineAbsolutePath',
      \   'fugitive': 'LightlineFugitive',
      \   'readonly': 'LightlineReadonly',
      \ },
      \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2 " },
      \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3 " },
      \ 'tabline_separator': { 'left': "\ue0b0", 'right': "\ue0b2 " },
      \ 'tabline_subseparator': { 'left': "\ue0b1", 'right': "\ue0b3 " },
      \ }

      "\ 'separator': { 'left': "\u2b80", 'right': "\u2b82" },
      "\ 'subseparator': { 'left': "\u2b81", 'right': "\u2b83" },
      "\ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2 " },
      "\ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3 " },

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
    " return branch !=# '' ? "\u2b60".branch : ''
    return branch !=# '' ? "\ue0a0 ".branch : ''
  endif
  return ''
endfunction

function! LightlineReadonly()
  " return &readonly ? '' : ''
  return &readonly ? "\ue0a2" : ''
endfunction

function! LightlineTabInfo()
  return lightline#tabs()
endfunction

"                        Default    powerline       vim-powerline
" separator.left         ''         '' (\ue0b0)    '⮀' (\u2b80)
" separator.right        ''         '' (\ue0b2)    '⮂' (\u2b82)
" subseparator.left      '|'        '' (\ue0b1)    '⮁' (\u2b81)
" subseparator.right     '|'        '' (\ue0b3)    '⮃' (\u2b83)
" branch symbol          --         '' (\ue0a0)    '⭠' (\u2b60)
" readonly symbol        --         '' (\ue0a2)    '⭤' (\u2b64)
" linecolumn symbol      --         '' (\ue0a1)    '⭡' (\u2b61)


