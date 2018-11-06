"------------------------------------------------------------------------------
" denite config
"------------------------------------------------------------------------------

" キーマッピング
nnoremap [denite]   <Nop>
nmap <C-k><C-d> [denite]
nnoremap [denite]<C-f> :<C-u>Denite<Space>file<CR>
" nnoremap [denite]<C-g> :<C-u>Denite<Space>grep<CR>
nnoremap [denite]<C-b> :<C-u>Denite<Space>buffer<CR>
nnoremap [denite]<C-h> :<C-u>Denite<Space>file_mru<CR>
nnoremap [denite]<C-y> :<C-u>Denite<Space>neoyank<CR>
nnoremap [denite]<C-r> :<C-u>Denite -buffer/-name=register register<CR>
nnoremap [denite]<C-c> :<C-u>DeniteBufferDir file<CR>

nnoremap [denite]f     :<C-u>Denite<Space>file<CR>
" nnoremap [denite]g     :<C-u>Denite<Space>grep<CR>
nnoremap [denite]b     :<C-u>Denite<Space>buffer<CR>
nnoremap [denite]h     :<C-u>Denite<Space>file_mru<CR>
nnoremap [denite]y     :<C-u>Denite<Space>neoyank<CR>
nnoremap [denite]r     :<C-u>Denite -buffer-name=register register<CR>
nnoremap [denite]c     :<C-u>DeniteBufferDir -buffer-name=files file<CR>

"--------------------------------------------------------
" よく使うやつは短いものも用意しておく
"--------------------------------------------------------
nnoremap <C-k><C-b> :Denite<Space>buffer<CR>
nnoremap <C-k><C-f> :Denite<Space>buffer<CR>
command! Dbuffer execute(":Denite buffer")
command! Dfile execute(":Denite file")
command! Dmru execute(":Denite file_mru")

"--------------------------------------------------------
" grep用のコマンドを作っておく
" https://qiita.com/pocari/items/1b76c211d5555fa87834
"--------------------------------------------------------
" grepする
command! Dgrep execute(":Denite grep -buffer-name=grep-buffer-denite")
" Denite grep検索結果を再表示する
command! Dresume execute(":Denite -resume -buffer-name=grep-buffer-denite")
" Denite grep検索結果を再表示する
" resumeした検索結果の次の行の結果へ飛ぶ
command! Dnext execute(":Denite -resume -buffer-name=grep-buffer-denite -select=+1 -immediately")
" resumeした検索結果の前の行の結果へ飛ぶ
command! Dprev execute(":Denite -resume -buffer-name=grep-buffer-denite -select=-1 -immediately")
" grepをagで高速化
call denite#custom#var('file_rec', 'command', ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'default_opts', ['--follow', '--no-group', '--no-color'])

" ショートカット
noremap [denite]<C-g> :<C-u>Dg<CR>
noremap [denite]<C-n> :<C-u>Dgresume<CR>
noremap [denite]<C-n> :<C-u>Dgnext<CR>
noremap [denite]<C-p> :<C-u>Dgprev<CR>
noremap [denite]g     :<C-u>Dg<CR>
noremap [denite]r     :<C-u>Dgresume<CR>
noremap [denite]n     :<C-u>Dgnext<CR>
noremap [denite]p     :<C-u>Dgprev<CR>


