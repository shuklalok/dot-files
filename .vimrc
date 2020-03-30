" ===================================
" vim-plug
" ===================================
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'edkolev/tmuxline.vim'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'airblade/vim-gitgutter'
Plug 'luochen1990/rainbow'
call plug#end()
" ===================================

" Basics
syntax on
set nowrap

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

"NERDTree Config
nnoremap <F4> :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
