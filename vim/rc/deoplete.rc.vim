"------------------------------------------------------------------------------
" deoplete config
"------------------------------------------------------------------------------


let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_complete_delay = 0
let g:deoplete#auto_complete_start_length = 1
" let g:deoplete#enable_camel_case = 0
" let g:deoplete#enable_ignore_case = 0
let g:deoplete#enable_refresh_always = 0
let g:deoplete#enable_smart_case = 1
" let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#max_list = 50


" I want to close the preview window after completion is done.
autocmd CompleteDone * silent! pclose!

" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS>  deoplete#smart_close_popup()."\<C-h>"





