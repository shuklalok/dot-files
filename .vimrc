" ===================================
" vim-plug
" ===================================
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-buftabline'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'luochen1990/rainbow'
Plug 'Yggdroot/indentLine'
call plug#end()
" ===================================

" Basics
set nowrap

" Theme
colorscheme gruvbox
set background=dark

" Lightline
let g:lightline = {
    \ 'colorscheme': 'gruvbox',
    \ 'separator': { 'left': '', 'right': '' },
    \ 'subseparator': { 'left': '', 'right': '' }
    \ }

" Buftabline
let g:buftabline_indicators = 1
"let g:buftabline_numbers = 2

" Gitgutter
let g:gitgutter_preview_win_floating = 1
set updatetime = 1000

" Rainbow Parentheses
let g:rainbow_active = 1

" Indent lines
let g:indentLine_char = '¦'

" Find files
set path=**
"set wildmenu

" Buffers
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

" Shared clipboard
set clipboard=unnamedplus

" Show linenumbers
set number

" Show hidden characters
set list listchars=tab:>-,trail:·,extends:>,precedes:<,eol:↵,nbsp:˽

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

" Set ruler
set colorcolumn=80,100,120

" Italics
highlight Comment cterm=italic gui=italic

" Search
set nohlsearch

" Better diff colors
if &diff
    syntax off
endif

highlight DiffAdd    cterm=bold ctermfg=darkgreen ctermbg=bg
highlight DiffDelete cterm=bold ctermfg=darkred   ctermbg=bg
highlight DiffChange cterm=bold ctermfg=yellow    ctermbg=bg
highlight DiffText   cterm=bold ctermfg=blue      ctermbg=bg

" NERDTree Config
nnoremap <F4> :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1

