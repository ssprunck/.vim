set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'

call vundle#end()

" Colors
syntax enable
set background=dark
colorscheme solarized

" Tabs & Spaces
set autoindent
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4
set expandtab       " tabs are spaces
set backspace=indent,eol,start

" UI Config
filetype plugin indent on
set number
" set relativenumber " disabled until they fix the memory issue
set wildmenu
set lazyredraw      " redraw only when we need to.
set showmatch       " highlight matching [{()}]
set laststatus=2
set visualbell
au BufRead,BufNewFile *.html.twig set filetype=html
au BufRead,BufNewFile *.config set filetype=xml

" Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set path+=\**

set whichwrap+=<,>,h,l,[,]
set encoding=utf-8
set autoread

" Nerdtree
nnoremap <c-n> :NERDTreeToggle<CR>
