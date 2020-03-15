set nocompatible              " be iMproved, required
filetype off                  " required
set background=dark
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-commentary'
Plugin 'Valloric/YouCompleteMe'
Plugin 'itchyny/lightline.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
syntax on 

let g:molokai_original = 1
colorscheme molokai

" set foldmethod=indent
" set foldlevel=1
" set foldclose=all

set hls
set is
set relativenumber
set ignorecase
set smartcase
set encoding=utf-8

imap <C-q> <esc>:q<cr>
imap <C-s> <esc>:w<cr>
nmap <C-s> <esc>:w<cr>
nmap <C-q> <esc>:q<cr>
" Allow us to use Ctrl-s and Ctrl-q as keybinds
" silent !stty -ixon

"" UI Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
filetype plugin on      " load filetype specific plugin files
set laststatus=2        " Show the status line at the bottom
set backspace=indent,eol,start

" Restore default behaviour when leaving Vim.
autocmd VimLeave * silent !stty ixon
