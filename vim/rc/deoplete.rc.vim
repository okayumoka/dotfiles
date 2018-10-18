"------------------------------------------------------------------------------
" deoplete config
"------------------------------------------------------------------------------

" <TAB>: completion.
" inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"      \ deoplete#manual_complete()
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~ '\s'
" endfunction

" <C-n>: completion.
inoremap <silent><expr> <C-n>
      \ pumvisible() ? "\<C-u>deoplete#manual_complete()" :
      \ deoplete#manual_complete()

" <CR>: close popup.
inoremap <expr><CR> pumvisible() ? deoplete#close_popup() : "<CR>"

" <C-h>, <BS>, <C-e>: close popup and delete backword char.
inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS>  deoplete#smart_close_popup()."\<C-h>"

inoremap <expr><C-g> deoplete#refresh()
inoremap <expr><C-e> deoplete#cancel_popup()

" call deoplete#custom#source('_', 'matchers',
"      \ ['matcher_fuzzy', 'matcher_length'])
"
" call deoplete#custom#source('_', 'converters', [
"      \ 'converter_remove_paren',
"      \ 'converter_remove_overlap',
"      \ 'matcher_length',
"      \ 'converter_truncate_abbr',
"      \ 'converter_truncate_menu',
"      \ 'converter_auto_delimiter',
"      \ ])

call deoplete#custom#option('enable_at_startup', v:true)
call deoplete#custom#option('auto_complete_delay', 0)
call deoplete#custom#option('auto_complete_start_length', 1)

call deoplete#custom#option('camel_case', v:true)
" call deoplete#custom#option('enable_ignore_case', v:true)
call deoplete#custom#option('refresh_always', v:true)
" call deoplete#custom#option('smart_case', v:true)
call deoplete#custom#option('max_list', 50)

