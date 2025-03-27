set relativenumber 
command! -nargs=1 WrapLines execute 'set textwidth=' . <args> | execute 'normal gggqG'

syntax enable

set number
filetype indent on
set smartindent
autocmd BufRead, BufWritePre *.sh normal gg=G

" Scroll down/up and center screen
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz
