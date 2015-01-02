set nocompatible

set autowrite
set diffopt+=vertical
set expandtab
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
set smartindent
set splitbelow
set splitright
set tabstop=2

let mapleader = " "

iabbrev </ </<C-X><C-O>

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
