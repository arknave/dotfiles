" Essentials
set nocompatible
set encoding=utf-8
let mapleader  = ","
filetype off

" Recognize .md files as markdown
au BufRead,BufNewFile *.md set filetype=markdown

" Line Numbers
set number
set relativenumber

" Expand all tabs to 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set cindent

" Searching
set incsearch
set hlsearch

" Key bindings
set pastetoggle=<F2>
map <F3> :Latex<CR>

" Display
syntax enable

set background=light
