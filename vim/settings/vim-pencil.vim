" Basic vim-pencil config
let g:pencil#wrapModeDefault = 'soft'   " Use soft wrapping (doesn't insert actual linebreaks)
augroup pencil
  autocmd!
  autocmd FileType markdown,text,tex call pencil#init()
  " Add other filetypes as needed
augroup END
