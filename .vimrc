set relativenumber 
" command! -nargs=1 WrapLines execute 'set textwidth=' . <args> | execute 'normal gggqG'


set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4

" Enable transparency (if supported by terminal)

autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE

syntax enable

set number
filetype indent on
set smartindent
autocmd BufRead, BufWritePre *.sh normal gg=G

" Scroll down/up and center screen
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

call plug#begin()

Plug 'rose-pine/vim'
Plug 'bling/vim-bufferline'

call plug#end()

colorscheme sorbet
