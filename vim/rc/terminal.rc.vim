"------------------------------------------------------------------------------
" ターミナル関連の設定
"------------------------------------------------------------------------------

if (has('nvim'))
	" NeoVimの:terminalの設定
	" デフォルトで起動するシェルをbashにする
	set sh=bash
	" ESCでコマンドモードにする。（デフォルトは<C-\><C-n>で使いにくい）
	tnoremap <silent> <ESC> <C-\><C-n>
elseif (has('terminal'))
	" ESCでコマンドモードにする。（デフォルトは<C-\><C-n>で使いにくい）
	tnoremap <silent> <ESC> <C-\><C-n>
	" 好みの設定をしておく
	command! Term terminal ++close C:/home/bin/nyagos/nyagos.exe
else
	" terminalが使えない時はVimShellで代用
	" VimShellのエイリアスとしてTermを設定
	command! Term VimShell
endif

