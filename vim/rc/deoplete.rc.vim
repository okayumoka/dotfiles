"------------------------------------------------------------------------------
" deoplete config
"------------------------------------------------------------------------------

" <TAB>: completion.
inoremap <silent><expr> <TAB>
     \ pumvisible() ? "\<C-n>" :
     \ <SID>check_back_space() ? "\<TAB>" :
     \ deoplete#manual_complete()
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1] =~ '\s'
endfunction

" <C-n>: completion.
inoremap <silent><expr> <C-n>
    \ pumvisible() ?
    \ "\<C-u>deoplete#manual_complete()" :
    \ deoplete#manual_complete()

" <CR>: close popup.
inoremap <expr><CR> pumvisible() ? deoplete#close_popup() : "<CR>"

" <C-h>, <BS>, <C-e>: close popup and delete backword char.
inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS>  deoplete#smart_close_popup()."\<C-h>"

" inoremap <expr><C-g> deoplete#refresh()
inoremap <expr><C-g> deoplete#cancel_popup()
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
" call deoplete#custom#option('auto_complete_start_length', 3)
call deoplete#custom#option('min_pattern_length', 3)

call deoplete#custom#option('camel_case', v:true)
" call deoplete#custom#option('enable_ignore_case', v:true)
call deoplete#custom#option('refresh_always', v:true)
" call deoplete#custom#option('smart_case', v:true)
call deoplete#custom#option('max_list', 200)


" MEMO: LSPと相性があんまりよくないのでオフにしておく
" call deoplete#custom#var('omni', 'input_patterns', {
"    \ 'ruby': ['[^. *\t]\.\w*', '[a-zA-Z_]\w*::'],
"    \ 'javascript': ['[^. *\t]\.\w*', '[a-zA-Z_]\w*::'],
"    \ 'typescript': ['[^. *\t]\.\w*', '[a-zA-Z_]\w*::'],
"\})

" "-------------------------------
" " LSP settings (LanguageClient-neovim)
" "-------------------------------
" set hidden
" let g:LanguageClient_autoStart = 1
" let g:LanguageClient_serverCommands = {
"    \ 'ruby': ['solargraph', 'stdio'],
"    \ 'javascript': ['javascript-typescript-stdio'],
"    \ 'typescript': ['javascript-typescript-stdio'],
"    \ 'css': ['css-languageserver', '--stdio'],
"    \ 'scss': ['css-languageserver', '--stdio'],
"    \ 'less': ['css-languageserver', '--stdio'],
"    \ 'vue': ['vls'],
"    \ 'python': ['pyls', '--stdio'],
"\}
"
" nnoremap [lsp] <NOP>
" nmap <C-k><C-l> [lsp]
" nnoremap [lsp]m     :call LanguageClient_contextMenu()<CR>
" nnoremap [lsp]<C-m> :call LanguageClient_contextMenu()<CR>
" nnoremap [lsp]h     :call LanguageClient_textDocument_hover()<CR>
" nnoremap [lsp]<C-h> :call LanguageClient_textDocument_hover()<CR>
" nnoremap [lsp]k     :call LanguageClient_textDocument_hover()<CR>
" nnoremap [lsp]<C-k> :call LanguageClient_textDocument_hover()<CR>
" nnoremap [lsp]d     :call LanguageClient_textDocument_definition()<CR>
" nnoremap [lsp]<C-d> :call LanguageClient_textDocument_definition()<CR>
" nnoremap [lsp]r     :call LanguageClient_textDocument_rename()<CR>
" nnoremap [lsp]<C-r> :call LanguageClient_textDocument_rename()<CR>
"

"-------------------------------
" LSP settings (vim-lsp & vim-lsp-settings)
"-------------------------------
let g:lsp_settings_servers_dir = '~/.lsp_servers'
let g:lsp_preview_float = 1
let g:lsp_diagnostics_enabled =   " lintはaleでやるので無効にしておく
let g:lsp_signs_enabled = 1
let g:lsp_diagnostics_echo_cursor = 1

nnoremap [lsp] <NOP>
nmap <C-k><C-l> [lsp]
nnoremap [lsp]h     :<C-u>LspHover<CR>
nnoremap [lsp]<C-h> :<C-u>LspHover<CR>
nnoremap [lsp]d     :<C-u>LspDefinition<CR>
nnoremap [lsp]<C-d> :<C-u>LspDefinition<CR>
nnoremap [lsp]r     :<C-u>LspRename<CR>
nnoremap [lsp]<C-r> :<C-u>LspRename<CR>

