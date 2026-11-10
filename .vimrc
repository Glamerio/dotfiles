" ==========================================
" GENERAL
" ==========================================

set nocompatible
set number
set relativenumber
set cursorline
set showmatch

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set autoindent
set smartindent

set ignorecase
set smartcase
set incsearch
set hlsearch

set scrolloff=5
set splitright
set splitbelow

set termguicolors
syntax on
filetype plugin indent on

" ==========================================
" LEADER KEY
" ==========================================

let mapleader = " "

" ==========================================
" PLUGINS
" ==========================================

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'

call plug#end()

" ==========================================
" NERDTREE
" ==========================================

nnoremap <C-n> :NERDTreeToggle<CR>

let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen = 0

" ==========================================
" WINDOW NAVIGATION
" ==========================================

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" ==========================================
" SEARCH
" ==========================================

nnoremap <leader>h :nohlsearch<CR>
