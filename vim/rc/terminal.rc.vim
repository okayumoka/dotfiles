"------------------------------------------------------------------------------
" ターミナル関連の設定
"------------------------------------------------------------------------------

if (has('nvim'))
	" NeoVimの:terminalの設定
	" デフォルトで起動するシェルをbashにする
	set sh=bash
	" ESCでコマンドモードにする。（デフォルトは<C-\><C-n>で使いにくい）
	tnoremap <silent> <ESC> <C-\><C-n>
	" 好みの設定をしておく
	command! Term split term://bash
elseif (has('terminal'))
	" デフォルトで起動するシェルをbashにする
	set sh=bash
	" ESCでコマンドモードにする。（デフォルトは<C-\><C-n>で使いにくい）
	tnoremap <silent> <ESC> <C-\><C-n>
	" 好みの設定をしておく
	command! Term terminal ++close bash
else
	" terminalが使えない時はVimShellで代用
	" VimShellのエイリアスとしてTermを設定
	command! Term VimShell
endif

" VimShellのショートカット
command! Vs VimShell

