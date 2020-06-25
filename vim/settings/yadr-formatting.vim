autocmd BufWritePost *.template silent !cfn-format -w % 2>/dev/null
