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

" Download vimplug
let data_dir = expand('~/.vim')
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo ' . data_dir . '/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin()

Plug 'rose-pine/vim'
Plug 'bling/vim-bufferline'

call plug#end()

colorscheme sorbet
