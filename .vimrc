" ===================================
" vim-plug
" ===================================
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'edkolev/tmuxline.vim'
Plug 'morhetz/gruvbox'
Plug 'luochen1990/rainbow'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
call plug#end()
" ===================================

" Basics
syntax on
filetype plugin indent on
set nowrap
set nocompatible
let mapleader = ","

" Theme
colorscheme gruvbox
set background=dark
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Rainbow Parentheses
let g:rainbow_active = 1

" Shared clipboard
set clipboard=unnamedplus

" Show linenumbers
set number relativenumber

" Proper Split
set splitbelow splitright

" Proper tabs
set tabstop=2
set shiftwidth=2
set expandtab

" Mouse Support
" set ttymouse=xterm2
" set mouse=a

" Enable highlighting of the current line
set cursorline
"set cursorcolumn

" Italics
highlight Comment cterm=italic

" NERDTree Config
nnoremap <F4> :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
let NERDTreeShowHidden = 1

" GitGutter Config
nmap <leader>p <Plug>(GitGutterPrevHunk)
nmap <leader>v <Plug>(GitGutterPreviewHunk)
nmap <leader>n <Plug>(GitGutterNextHunk)
