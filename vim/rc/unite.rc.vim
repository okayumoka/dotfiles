"------------------------------------------------------------------------------
" unite config
"------------------------------------------------------------------------------

"let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable =1
let g:unite_source_file_mru_limit = 200

nnoremap [unite]   <Nop>
nmap <Space>u [unite]
nnoremap [unite]f :<C-u>Unite<Space>file<CR>
nnoremap [unite]g :<C-u>Unite<Space>grep<CR>
nnoremap [unite]b :<C-u>Unite<Space>buffer<CR>
nnoremap [unite]m :<C-u>Unite<Space>bookmark<CR>
nnoremap [unite]a :<C-u>UniteBookmarkAdd<CR>
nnoremap [unite]h :<C-u>Unite<Space>file_mru<CR>
nnoremap [unite]y :<C-u>Unite<Space>history/yank<CR>
nnoremap [unite]r :<C-u>Unite -buffer-name=register register<CR>
nnoremap [unite]c :<C-u>UniteWithBufferDir -buffer-name=files file<CR>

