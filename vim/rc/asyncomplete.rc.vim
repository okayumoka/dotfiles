"------------------------------------------------------------------------------
" asyncomplete config
"------------------------------------------------------------------------------

" let g:asyncomplete_enable_for_all = 1
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_log_file = expand('~/asyncomplete.log')

" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"
" imap <c-space> <Plug>(asyncomplete_force_refresh)
imap <C-k><C-n> <Plug>(asyncomplete_force_refresh)

" asyncomplete-buffer.vim
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
      \ 'name': 'buffer',
      \ 'whitelist': ['*'],
      \ 'blacklist': ["log"],
      \ 'completor': function('asyncomplete#sources#buffer#completor'),
      \ }))

" asyncomplete-emoji.vim
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#emoji#get_source_options({
     \ 'name': 'emoji',
     \ 'whitelist': ['txt', 'md'],
     \ 'completor': function('asyncomplete#sources#emoji#completor'),
     \ }))

" asyncomplete-file.vim
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
     \ 'name': 'file',
     \ 'whitelist': ['*'],
     \ 'priority': 10,
     \ 'completor': function('asyncomplete#sources#file#completor')
     \ }))

" asyncomplete-omni.vim
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#omni#get_source_options({
     \ 'name': 'omni',
     \ 'whitelist': ['*'],
     \ 'blacklist': ['c', 'cpp', 'html'],
     \ 'completor': function('asyncomplete#sources#omni#completor')
     \  }))

" asyncomplete-necovim.vim
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#necovim#get_source_options({
     \ 'name': 'necovim',
     \ 'whitelist': ['vim'],
     \ 'completor': function('asyncomplete#sources#necovim#completor'),
     \ }))

if executable('pyls')
  " pip install python-language-server
  au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif

if executable('css-languageserver')
  " pip install python-language-server
  au User lsp_setup call lsp#register_server({
        \ 'name': 'css/scss/less',
        \ 'cmd': {server_info->['css-languageserver --stdio']},
        \ 'whitelist': ['css', 'scss', 'less'],
        \ })
endif

if executable('typescript-language-server')
  " au User lsp_setup call lsp#register_server({
  "      \ 'name': 'typescript-language-server',
  "      \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
  "      \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'tsconfig.json'))},
  "      \ 'whitelist': ['typescript', 'typescript.tsx'],
  "      \ })

  au User lsp_setup call lsp#register_server({
        \ 'name': 'typescript-language-server',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
        \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'package.json'))},
        \ 'whitelist': ['typescript', 'typescript.tsx', 'javascript', 'javascript.jsx'],
        \ })

  " au User lsp_setup call lsp#register_server({
  "      \ 'name': '2 typescript-language-server',
  "      \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
  "      \ 'whitelist': ['typescript', 'typescript.tsx', 'javascript', 'javascript.jsx'],
  "      \ })
endif

if executable('solargraph')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'solargraph',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'solargraph stdio']},
        \ 'initialization_options': {"diagnostics": "true"},
        \ 'whitelist': ['ruby'],
        \ })
endif


