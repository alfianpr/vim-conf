" Vim-Plug plugin manager
call plug#begin('~/.vim/plugged')

" Python-specific plugins
Plug 'dense-analysis/ale'
Plug 'vim-python/python-syntax'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'nvie/vim-flake8'

" General productivity plugins
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'

call plug#end()

" General settings
syntax on
filetype plugin indent on
set number
set relativenumber
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set incsearch
set hlsearch
set ignorecase
set smartcase
set mouse=a
set clipboard=unnamedplus
set colorcolumn=80
set encoding=utf-8
set backspace=indent,eol,start

" Python-specific settings
let g:python_highlight_all = 1
autocmd FileType python setlocal colorcolumn=80

" ALE (Asynchronous Lint Engine) settings
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['autopep8', 'yapf', 'isort'],
\}
let g:ale_fix_on_save = 1
let g:ale_linters = {'python': ['flake8', 'pylint']}
