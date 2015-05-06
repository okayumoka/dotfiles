
" カラー設定:
"syntax enable	"シンタックスハイライト
"syntax on		"シンタックスハイライト
set background=dark
colorscheme solarized
" colorscheme hybrid
highlight specialkey term=none cterm=none gui=none ctermfg=11 ctermbg=8 guifg=#586e75 guibg=#002b36

"---------------------------------------------------------------------------
" フォント設定:
"set guifont=Migu\ 1m:h10
set guifont=Meiryo\ Consolas:h10
" DirectDrawを有効に
if has('win32')
  set renderoptions=type:directx,renmode:5
endif


"---------------------------------------------------------------------------
" ウインドウに関する設定:
"
" ウインドウの幅
set columns=120
" ウインドウの高さ
set lines=250
" 透過背景
autocmd GUIEnter * set transparency=225
" ツールバーを削除
set guioptions-=T
"メニューを削除
set guioptions-=m
" コマンド行の高さ
set cmdheight=1
" 折り返さない
set nowrap          " 折り返さない
" バックアップファイルを作らない
set nobackup

"---------------------------------------------------------------------------
" ウインドウ位置とサイズの自動保存・復元
"
let g:save_window_file = expand('~/.vim/.vimwinpos')
augroup SaveWindow
  autocmd!
  autocmd VimLeavePre * call s:save_window()
  function! s:save_window()
    let options = [
      \ 'set columns=' . &columns,
      \ 'set lines=' . &lines,
      \ 'winpos ' . getwinposx() . ' ' . getwinposy(),
      \ ]
    call writefile(options, g:save_window_file)
  endfunction
augroup END

if filereadable(g:save_window_file)
  execute 'source' g:save_window_file
endif
