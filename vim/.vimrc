set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vivien/vim-addon-linux-coding-style'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'kergoth/vim-bitbake'
Plugin 'django.vim'
Plugin 'nvie/vim-flake8'
Plugin 'rykka/riv.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'Flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

filetype plugin indent on
filetype on

autocmd FileType html setlocal tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType javascript setlocal tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType css setlocal tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType php setlocal tabstop=2|set shiftwidth=2|set expandtab

set number
set relativenumber
set hlsearch
set incsearch
set cindent

" easier split navigation
nmap <silent> <c-up> :wincmd k<CR>
nmap <silent> <c-down> :wincmd j<CR>
nmap <silent> <c-left> :wincmd h<CR>
nmap <silent> <c-right> :wincmd l<CR>

" display the statusline always
:set laststatus=2

" disable folding for riv
let g:riv_disable_folding=1
" ignore .pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
map <leader>n :NERDTreeToggle<CR>

" call flake8 on save
autocmd BufWritePost *.py call Flake8()

" exit vim if NERDTree is the last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

