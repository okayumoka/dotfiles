"------------------------------------------------------------------------------
" その他のキーバインドなど
"------------------------------------------------------------------------------

"--------------------------------------------------------
" ファイルを開いたときに自動的にcdする
"--------------------------------------------------------
" function! CdOnBufEnter()
" 	try
" 		lcd %:p:h
" 	catch
" 		" 握りつぶす
" 	endtry
" endfunction
" au BufEnter * execute "call CdOnBufEnter()"


"--------------------------------------------------------
" カレントバッファのファイルがあるディレクトリにcdする
"--------------------------------------------------------
function! CdToCurrentBufDir()
	try
		cd %:p:h
		pwd
	catch
		" 握りつぶす
	endtry
endfunction
command! Cd call CdToCurrentBufDir()


"--------------------------------------------------------
" カレントバッファのファイルのフルパスを表示
"--------------------------------------------------------
function! EchoCurrentPath()
  let path = execute(':echo expand("%:p")')
  execute(':normal i' . path)
endfunction
command! EchoCurrentPath call EchoCurrentPath()
command! CurrentPath execute(':echo expand("%:p")')


"--------------------------------------------------------
" ファイル保存時に末尾の余計なスペースを削除
"--------------------------------------------------------
" autocmd BufWritePre * :%s/\s\+$//ge


"--------------------------------------------------------
" <% をいれられたら %> を補完
"--------------------------------------------------------
inoremap <expr> % ErbTagComp()
function ErbTagComp()
  if getline('.') == "<"
		return "\% \%\>\<Left>\<Left>\<Left>"
	else
		return "\%"
	end
endf

"--------------------------------------------------------
" クリップボードにコピー
"--------------------------------------------------------
" 選択部分をコピー
vnoremap <C-c><C-c> "+y
" 1文字
inoremap <C-c><C-c> v"+y
nnoremap <C-c><C-c> v"+y
" 単語
inoremap <C-c><C-i><C-y> viw"+y
nnoremap <C-c><C-i><C-y> viw"+y


