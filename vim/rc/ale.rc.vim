"------------------------------------------------------------------------------
" ale config
"------------------------------------------------------------------------------

let g:ale_enabled = 0
let g:ale_linters = {
      \   'javascript': ['eslint'],
      \   'typescript': ['eslint'],
      \}
" let g:ale_linter_aliases = {'vue': ['css'}
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_filetype_changed = 1
" let g:ale_sign_column_always = 1
" let g:ale_sign_error = '>>'
" let g:ale_sign_warning = '--'

" let g:ale_fixers = {
      "\  '*': ['remove_trailing_lines', 'trim_whitespace'],
      "\  'javascript': ['eslint'],
      "\  'typescript': ['eslint'],
"\}
let g:ale_fix_on_save = 0

