" Python-mode
" Keys
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)

" Turn on pymode plugin
let g:pymode = 1

" Setup default options
let g:pymode_options = 1

" Turn on/off plugin warnings
let g:pymode_warnings = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_bind = 'K'

" Support virtualenv
let g:pymode_virtualenv = 1

" Trim white space
let g:pymode_trim_whitespaces = 1

" Max line length and colorbar
let g:pymode_options_max_line_length = 79
let g:pymode_options_colorcolumn = 1

" Pymode quickfix window
let g:pymode_lint_cwindow = 1
let g:pymode_quickfix_minheight = 3
let g:pymode_quickfix_maxheight = 6

" PEP8 compatible indentation
let g:pymode_indent = 1

" Autofold code
let g:pymode_folding = 0

" Vim motion
let g:pymode_motion = 1

" Run python code
let g:pymode_run = 1
let g:pymode_run_bind = '<leader>r'

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" Code checking
let g:pymode_lint = 1
let g:pymode_lint_checker = ['pyflakes', 'pep8']

" Auto check on save and on the fly
let g:pymode_lint_write = 1
let g:pymode_lint_on_fly = 1

" Error messages
let g:pymode_lint_message = 1
let g:pymode_lint_sort = ['E', 'C', 'I']
let g:pymode_lint_signs = 1

" Activate rope
let g:pymode_rope = 0

" Syntax
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
