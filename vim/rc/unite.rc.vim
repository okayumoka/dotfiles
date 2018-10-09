"------------------------------------------------------------------------------
" unite config
"------------------------------------------------------------------------------

" let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable =1
let g:unite_source_file_mru_limit = 200

nnoremap [unite]   <Nop>
nmap <C-k><C-u> [unite]
nnoremap [unite]<C-f> :<C-u>Unite<Space>file<CR>
nnoremap [unite]<C-g> :<C-u>Unite<Space>grep<CR>
nnoremap [unite]<C-b> :<C-u>Unite<Space>buffer<CR>
nnoremap [unite]<C-m> :<C-u>Unite<Space>bookmark<CR>
nnoremap [unite]<C-a> :<C-u>UniteBookmarkAdd<CR>
nnoremap [unite]<C-h> :<C-u>Unite<Space>file_mru<CR>
nnoremap [unite]<C-y> :<C-u>Unite<Space>history/yank<CR>
nnoremap [unite]<C-r> :<C-u>Unite -buffer-name=register register<CR>
nnoremap [unite]<C-c> :<C-u>UniteWithBufferDir -buffer-name=files file<CR>

nnoremap [unite]f :<C-u>Unite<Space>file<CR>
nnoremap [unite]g :<C-u>Unite<Space>grep<CR>
nnoremap [unite]b :<C-u>Unite<Space>buffer<CR>
nnoremap [unite]m :<C-u>Unite<Space>bookmark<CR>
nnoremap [unite]a :<C-u>UniteBookmarkAdd<CR>
nnoremap [unite]h :<C-u>Unite<Space>file_mru<CR>
nnoremap [unite]y :<C-u>Unite<Space>history/yank<CR>
nnoremap [unite]r :<C-u>Unite -buffer-name=register register<CR>
nnoremap [unite]c :<C-u>UniteWithBufferDir -buffer-name=files file<CR>

"--------------------------------------------------------
" よく使うやつは短いものも用意しておく
"--------------------------------------------------------
nnoremap <C-k><C-n> :<C-u>Unite<Space>buffer<CR>


