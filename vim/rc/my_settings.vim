"------------------------------------------------------------------------------
" その他のキーバインドなど
"------------------------------------------------------------------------------
"--------------------------------------------------------
" カッコなどを自動で閉じる
"--------------------------------------------------------
" inoremap { {}<Left>
" inoremap ( ()<Left>
" inoremap [ []<Left>
" inoremap " ""<Left>
" inoremap ' ''<Left>


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
function! ErbTagComp()
  if getline('.')[col('.') - 2] == "<"
    return "\% \%\>\<Left>\<Left>\<Left>"
  else
    return "\%"
  end
endf


"--------------------------------------------------------
" クリップボードにコピー
"--------------------------------------------------------
" 選択部分
vnoremap <C-c><C-c> "+y
" 1文字
nnoremap <C-c><C-c> v"+y
" 単語
nnoremap <C-c><C-i><C-y> viw"+y


"--------------------------------------------------------
" リロード
"--------------------------------------------------------
command! Reload execute(":e!")


"--------------------------------------------------------
" タブ操作
"--------------------------------------------------------
" 新規タブ
nnoremap <C-k><C-k><C-t> :<C-u>tabnew<CR>
" nnoremap <C-k><C-k><C-d> :<C-u>tabnew<CR>
" nnoremap <C-k><C-k><C-l> :<C-u>tabnext<CR>
nnoremap <C-k><C-k><C-n> :<C-u>tabnext<CR>
" nnoremap <C-k><C-k><C-h> :<C-u>tabprev<CR>
nnoremap <C-k><C-k><C-p> :<C-u>tabprev<CR>


"--------------------------------------------------------
" 整形
"--------------------------------------------------------
function! Format_file()
  let view = winsaveview()
  normal gg=G
  silent call winrestview(view)
endfunction
nnoremap <C-k><C-f> :call Format_file()<CR>


