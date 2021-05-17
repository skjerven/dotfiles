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
let g:syntastic_quiet_messages = {'level': 'warnings'}

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

let g:syntastic_c_checkers = ['make', 'splint', 'cppcheck']
let g:syntastic_cloudformation_checkers = ['cfn_lint']
let g:syntastic_cpp_checkers = ['']
let g:syntastic_cmake_checkers = ['']
let g:syntastic_cuda_checkers = ['']
let g:syntastic_dockerfile_checkers = ['']
let g:syntastic_fortran_checkers = ['']
let g:syntastic_java_checkers = ['']
let g:syntastic_json_checkers = ['']
let g:syntastic_lua_checkers = ['']
let g:syntastic_matlab_checkers = ['']
let g:syntastic_perl_checkers = ['']
let g:syntastic_python_checkers = ['']
let g:syntastic_r_checkers = ['']
let g:syntastic_ruby_checkers = ['']
let g:syntastic_sh_checkers = ['']
let g:syntastic_tcl_checkers = ['']
let g:syntastic_tex_checkers = ['']
let g:syntastic_xml_checkers = ['']
let g:syntastic_zsh_checkers = ['']
