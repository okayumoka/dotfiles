"------------------------------------------------------------------------------
" denite config
"------------------------------------------------------------------------------

nnoremap [denite]   <Nop>
nmap <C-k><C-d> [denite]
nnoremap [denite]<C-f> :<C-u>Denite<Space>file<CR>
nnoremap [denite]<C-g> :<C-u>Denite<Space>grep<CR>
nnoremap [denite]<C-b> :<C-u>Denite<Space>buffer<CR>
nnoremap [denite]<C-h> :<C-u>Denite<Space>file_mru<CR>
nnoremap [denite]<C-y> :<C-u>Denite<Space>neoyank<CR>
nnoremap [denite]<C-r> :<C-u>Denite -buffer/-name=register register<CR>
nnoremap [denite]<C-c> :<C-u>DeniteBufferDir file<CR>

nnoremap [denite]f :<C-u>Denite<Space>file<CR>
nnoremap [denite]g :<C-u>Denite<Space>grep<CR>
nnoremap [denite]b :<C-u>Denite<Space>buffer<CR>
nnoremap [denite]h :<C-u>Denite<Space>file_mru<CR>
nnoremap [denite]y :<C-u>Denite<Space>neoyank<CR>
nnoremap [denite]r :<C-u>Denite -buffer-name=register register<CR>
nnoremap [denite]c :<C-u>DeniteBufferDir -buffer-name=files file<CR>

"--------------------------------------------------------
" よく使うやつは短いものも用意しておく
"--------------------------------------------------------
nnoremap <C-k><C-b> :Denite<Space>buffer<CR>
nnoremap <C-k><C-f> :Denite<Space>buffer<CR>


