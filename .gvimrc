
" カラー設定:
"syntax enable	"シンタックスハイライト
"syntax on		"シンタックスハイライト
set background=dark
colorscheme solarized


"---------------------------------------------------------------------------
" フォント設定:
set guifont=Migu\ 1m:h10

"---------------------------------------------------------------------------
" ウインドウに関する設定:
"
" ウインドウの幅
set columns=100
" ウインドウの高さ
set lines=250
" 透過背景
autocmd GUIEnter * set transparency=235
" ツールバーを削除
set guioptions-=T
"メニューを削除
set guioptions-=m


"---------------------------------------------------------------------------
" ウインドウ位置とサイズの自動保存・復元
"
let g:save_window_file = expand('~/vimfiles/.vimwinpos')
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
