set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vivien/vim-addon-linux-coding-style'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'kergoth/vim-bitbake'
Plugin 'Raimondi/delimitMate'
Plugin 'Flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'

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

" exit vim if NERDTree is the last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

