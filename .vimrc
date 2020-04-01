" ===================================
" vim-plug
" ===================================
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-buftabline'
"Plug 'edkolev/tmuxline.vim'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'luochen1990/rainbow'
call plug#end()
" ===================================

" Basics
syntax on
set nowrap
set laststatus=2

" Theme
colorscheme gruvbox
set background=dark

" lightline
let g:lightline = {
    \ 'colorscheme': 'gruvbox',
    \ 'separator': { 'left': '', 'right': '' },
    \ 'subseparator': { 'left': '', 'right': '' }
    \ }

" Buftabline
let g:buftabline_show = 1
let g:buftabline_indicators = 1
"let g:buftabline_numbers = 2

" Rainbow Parentheses
let g:rainbow_active = 1

" Find files
set path=**
set wildmenu

" Buffers
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

" Shared clipboard
set clipboard=unnamedplus

" Show linenumbers
set number

" Proper split
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

" Italics
highlight Comment cterm=italic gui=italic

" NERDTree Config
nnoremap <F4> :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
