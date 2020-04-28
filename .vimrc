" ==============================================
" vim-plug
" ==============================================
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'ap/vim-buftabline'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'luochen1990/rainbow'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-unimpaired'
" ==============================================
call plug#end()
" ==============================================

" Basics
let mapleader=";"
set completeopt=menuone,longest
set laststatus=2
set nowrap
set path=**
set shortmess+=c
set signcolumn=yes
set noswapfile
set updatetime=50
set wildmenu
inoremap jj <Esc><Esc>
noremap <silent> k gk
noremap <silent> j gj

" Cursor
let &t_SI = "\<esc>[6 q"
let &t_EI = "\<esc>[1 q"
let &t_SR = "\<esc>[2 q"

" Mouse
set mouse=a
set ttymouse=xterm2

" Theme
colorscheme gruvbox
set background=dark

" Buftabline
let g:buftabline_show = 1
let g:buftabline_indicators = 1

" NERDTree
nnoremap <silent> <Leader>e :NERDTreeToggle<CR>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
let g:NERDTreeMinimalUI = 1
let g:NERDTreeShowHidden = 1

" FZF
let g:fzf_layout = { 'down': '~25%' }
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <F1> :Commands<CR>
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <Leader>r :Rg<CR>

" Rainbow Parentheses
let g:rainbow_active = 1

" Indent lines
let g:indentLine_char = '¦'

" Buffers
set hidden
nnoremap <silent> <Leader>w :bd<CR>

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

" Enable highlighting of the current line
" set cursorline

" Set ruler
set colorcolumn=80,100,120
highlight ColorColumn ctermbg=236

" Italics
highlight Comment cterm=italic

" Visual mode
highlight Visual cterm=NONE ctermfg=bg ctermbg=yellow

" Search
set hlsearch
set incsearch
set ignorecase smartcase
nnoremap <silent> <F5> :nohl<CR>

" Better diff colors
highlight DiffAdd    cterm=reverse ctermfg=darkgreen ctermbg=bg
highlight DiffDelete cterm=reverse ctermfg=red       ctermbg=bg
highlight DiffChange cterm=reverse ctermfg=yellow    ctermbg=bg
highlight DiffText   cterm=reverse ctermfg=blue      ctermbg=bg
