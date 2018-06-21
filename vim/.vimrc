set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vivien/vim-addon-linux-coding-style'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'posva/vim-vue'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'kergoth/vim-bitbake'
Plugin 'klen/python-mode'
Plugin 'rykka/riv.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'Flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'martinda/jenkinsfile-vim-syntax'

call vundle#end()

filetype plugin indent on
filetype on

autocmd FileType html setlocal tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType htmldjango setlocal tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType javascript setlocal tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType vue setlocal tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType css setlocal tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType php setlocal tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType yaml setlocal tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType json setlocal tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType Jenkinsfile setlocal tabstop=4|set shiftwidth=4|set expandtab

set number
set relativenumber
set hlsearch
set incsearch
set cindent
set cursorline

" easier split navigation
nmap <silent> <c-up> :wincmd k<CR>
nmap <silent> <c-down> :wincmd j<CR>
nmap <silent> <c-left> :wincmd h<CR>
nmap <silent> <c-right> :wincmd l<CR>

" display the statusline always
:set laststatus=2

" Line length indicators
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%79v.\+/
set colorcolumn=79

" disable folding for riv
let g:riv_disable_folding=1
" ignore .pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
map <leader>n :NERDTreeToggle<CR>
au FileType python map <leader>d oimport ipdb; ipdb.set_trace()<esc>

" exit vim if NERDTree is the last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" python-mode
let g:pymode_breakpoint = 1 " Enable breakpoints
let g:pymode_breakpoint_bind = '<leader>b' " Breakpoint binding
let g:pymode_breakpoint_cmd = 'import pdb; pdb.set_trace()'
let g:pymode_folding = 0 " Disable folding
let g:pymode_indent = 1 " Enable pep8 compliant indents
let g:pymode_lint = 1 " Enable linting
let g:pymode_lint_on_write = 1 " Run linters when file is saved
let g:pymode_lint_checkers = ['pyflakes', 'pep8'] " Linters to run
let g:pymode_lint_unmodified = 1 " Lint on save even if unmodified
let g:pymode_lint_on_fly = 1 " Lint on the fly
let g:pymode_lint_signs = 1 " Show lint problems next to line numbers
let g:pymode_lint_cwindow = 0 " Hide lint window
let g:pymode_rope = 0 " Disable rope
