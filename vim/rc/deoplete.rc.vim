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
call deoplete#custom#option('max_list', 500)


call deoplete#custom#var('omni', 'input_patterns', {
    \ 'ruby': ['[^. *\t]\.\w*', '[a-zA-Z_]\w*::'],
\})

"-------------------------------
" LSP settings
"-------------------------------
set hidden
let g:LanguageClient_autoStart = 1
let g:LanguageClient_serverCommands = {
    \ 'ruby': ['solargraph', 'stdio'],
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'css': ['css-languageserver --stdio'],
\}

nnoremap [lsp] <NOP>
nmap <C-k><C-l> [lsp]
nnoremap [lsp]m     :call LanguageClient_contextMenu()<CR>
nnoremap [lsp]<C-m> :call LanguageClient_contextMenu()<CR>
nnoremap [lsp]h     :call LanguageClient_textDocument_hover()<CR>
nnoremap [lsp]k     :call LanguageClient_textDocument_hover()<CR>
nnoremap [lsp]d     :call LanguageClient_textDocument_definition()<CR>
nnoremap [lsp]r     :call LanguageClient_textDocument_rename()<CR>


