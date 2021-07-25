set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_aggregate_errors = 1

"mark syntax errors with :signs
let g:syntastic_enable_signs=1
"automatically jump to the error when saving the file
let g:syntastic_auto_jump=0
"show the error list automatically
let g:syntastic_auto_loc_list=1
"don't care about warnings
"let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntatstic_quiet_messages = { "type": "style"}

" I have no idea why this is not working, as it used to
" be a part of syntastic code but was apparently removed
" This will make syntastic find the correct ruby specified by mri
function! s:FindRubyExec()
    if executable("rvm")
        return system("rvm tools identifier")
    endif

    return "ruby"
endfunction

if !exists("g:syntastic_ruby_exec")
    let g:syntastic_ruby_exec = s:FindRubyExec()
endif

let g:syntastic_filetype_map = {
    \ "json.cloudformation":"cloudformation",
    \ "yaml.cloudformation":"cloudformation",
    \ "Dockerfile":"dockerfile",
    \ "ghmarkdown":"markdown"}

let g:syntastic_ansible_checkers = ['ansible-lint']
let g:syntastic_c_checkers = ['make', 'gcc', 'cppcheck']
let g:syntastic_cloudformation_checkers = ['cfn_lint']
let g:syntastic_cpp_checkers = ['gcc', 'cppcheck']
let g:syntastic_dockerfile_checkers = ['hadolint']
let g:syntastic_fortran_checkers = ['gfortran']
let g:syntastic_json_checkers = ['jsonlint']
let g:syntastic_markdown_checkers = ['mdl']
let g:syntastic_python_checkers = ['pylint', 'pyflakes']
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_sh_checkers = ['sh', 'shellcheck']
let g:syntastic_text_checkers = ['textlint']
let g:syntastic_yaml_checkers = ['yamllint']
let g:syntastic_zsh_checkers = ['zsh']
