"------------------------------------------------------------------------------
" ターミナル関連の設定
"------------------------------------------------------------------------------

if (has('win32'))
  " Win
  " ESCでコマンドモードにする。（デフォルトは<C-\><C-n>で使いにくい）
  tnoremap <silent> <ESC> <C-\><C-n>
  " 好みの設定をしておく
  if (has('nvim'))
    command! Term split term://cmd
  else
    command! Term terminal ++close
  endif
else
  " Win以外
  if (has('nvim'))
    " NeoVim(win以外)の:terminalの設定
    " デフォルトで起動するシェル
    set sh=fish
    " ESCでコマンドモードにする。（デフォルトは<C-\><C-n>で使いにくい）
    tnoremap <silent> <ESC> <C-\><C-n>
    " 好みの設定をしておく
    command! Term split term://fish
    command! Termtab execute(":tabe | :terminal")
  elseif (has('terminal'))
    " デフォルトで起動するシェル
    set sh=fish
    " ESCでコマンドモードにする。（デフォルトは<C-\><C-n>で使いにくい）
    tnoremap <silent> <ESC> <C-\><C-n>
    " 好みの設定をしておく
    command! Term terminal ++close fish
  else
    " terminalが使えない時はVimShellで代用
    " VimShellのエイリアスとしてTermを設定
    command! Term VimShell
  endif
endif

" VimShellのショートカット
command! Vs VimShell

