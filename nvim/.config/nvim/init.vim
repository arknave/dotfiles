""------------------------------------------------------------------------------
" URL: http://www.github.com/arknave/dotfiles
" Author: www.github.com/arknave
" Description: Arnav's neovim config file


"------------------------------------------------------------------------------
" Essentials
"
" Load filetype info automatically
filetype plugin indent on

set encoding=utf-8
let mapleader=","
"
"------------------------------------------------------------------------------
" Automatic Actions

" Recognize .md files as markdown
au BufRead,BufNewFile *.md set filetype=markdown

"------------------------------------------------------------------------------
" Editor Behavior

" Expand all tabs to 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smarttab

" Highlight searches as you type
set incsearch
set hlsearch

" Case insensitive when searching except with uppercase
set ignorecase
set smartcase

" Custom commands
command Latex execute "!xelatex % && open %:r.pdf"

" Key bindings
set pastetoggle=<F2>
nnoremap <F3> :Latex<CR>
nnoremap <leader><space> :noh<CR>
nnoremap <leader>l :set list!<CR>
map Y y$

set confirm " Ask to save instead of failing :q
set mouse=a " Enable mouse

set formatoptions+=j " Delete comment character when joining lines

set nojoinspaces " Use only 1 space after . when joining lines instead of 2

set backspace=2

"------------------------------------------------------------------------------
" Interface

" Line Numbers
set number
set relativenumber

set laststatus=2 " always display status bar
set ruler " show cursor position
set showcmd " Show commands as they're being typed

" Wildmenu
set wildmode=longest,list,full
set wildmenu

set scrolloff=2 " Make sure there's always rows below cursor
set sidescrolloff=5 " ...and some to the side

set display+=lastline,uhex

" Display
syntax on

set background=dark
" colorscheme base16-default-dark
colorscheme desert

set listchars=tab:▸\ ,eol:¬

set noswapfile