execute pathogen#infect()

set nocompatible

set autoindent
set autowrite
set diffopt+=vertical
set encoding=utf-8
set expandtab
set hlsearch
set incsearch
set ignorecase
set laststatus=2
set list listchars=tab:»·,trail:·
set nobackup
set noswapfile
set nowritebackup
set number
set numberwidth=5
set relativenumber
set ruler
set shiftround
set shiftwidth=2
set showcmd
set smartcase
set smartindent
set splitright
set tabstop=2
set ttyfast
set wildmenu

nnoremap <space> <nop>
let mapleader = " "

if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" Switch between the last two files
nnoremap <leader><leader> <c-^>

augroup vimrcEx
  autocmd!

  autocmd BufRead,BufNewFile *.md set filetype=markdown
  autocmd FileType markdown setlocal spell
  autocmd FileType css,scss,sass setlocal iskeyword+=-
augroup END

" Move faster
nnoremap N 10j
vnoremap N 10j
nnoremap M 10k
vnoremap M 10k

" Open ~/.zshrc in the same buffer
nnoremap <leader>ez :e ~/.zshrc<cr>

" Lapses in concentration
nnoremap ; :
command WQ wq
command Wq wq
command Q q
