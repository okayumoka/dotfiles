"------------------------------------------------------------------------------
" denite config
"------------------------------------------------------------------------------

" 基本設定
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction

" float
let s:denite_win_width_percent = 0.85
let s:denite_win_height_percent = 0.7

" Change denite default options
"
let s:floating_setting = {
    \ 'split': 'floating',
    \ 'winwidth': float2nr(&columns * s:denite_win_width_percent),
    \ 'wincol': float2nr((&columns - (&columns * s:denite_win_width_percent)) / 2),
    \ 'winheight': float2nr(&lines * s:denite_win_height_percent),
    \ 'winrow': float2nr((&lines - (&lines * s:denite_win_height_percent)) / 2),
    \ }
call denite#custom#option('default', s:floating_setting)
call denite#custom#option('grep-buffer-denite', s:floating_setting)

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

"-------------------------------------------------------
" よく使うやつは短いものも用意しておく
"--------------------------------------------------------
nnoremap <C-k><C-b> :Denite<Space>buffer<CR>
" nnoremap <C-k><C-f> :Denite<Space>buffer<CR>
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
nnoremap [denite]<C-g> :Denite grep -buffer-name=grep-buffer-denite<CR>
nnoremap [denite]<C-r> :Denite -resume -buffer-name=grep-buffer-denite<CR>
nnoremap [denite]<C-n> :Denite -resume -buffer-name=grep-buffer-denite -select=+1 -immediately<CR>
nnoremap [denite]<C-p> :Denite -resume -buffer-name=grep-buffer-denite -select=-1 -immediately<CR>
nnoremap [denite]j     :Denite grep -buffer-name=grep-buffer-denite<CR>
nnoremap [denite]r     :Denite -resume -buffer-name=grep-buffer-denite<CR>
nnoremap [denite]n     :Denite -resume -buffer-name=grep-buffer-denite -select=+1 -immediately<CR>
nnoremap [denite]p     :Denite -resume -buffer-name=grep-buffer-denite -select=-1 -immediately<CR>


