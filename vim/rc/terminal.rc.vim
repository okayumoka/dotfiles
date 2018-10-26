"------------------------------------------------------------------------------
" ターミナル関連の設定
"------------------------------------------------------------------------------

if (has('nvim'))
	" NeoVimの:terminalの設定
	" デフォルトで起動するシェル
	set sh=fish
	" ESCでコマンドモードにする。（デフォルトは<C-\><C-n>で使いにくい）
	tnoremap <silent> <ESC> <C-\><C-n>
	" 好みの設定をしておく
	" command! Term split term://fish
	command! Term execute(":tabe | :terminal")
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

" VimShellのショートカット
command! Vs VimShell

