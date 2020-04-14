" ==============================================
" vim-plug
" ==============================================
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'luochen1990/rainbow'
Plug 'Yggdroot/indentLine'
" ==============================================
call plug#end()
" ==============================================

" Basics
set laststatus=2
set nowrap
set path=**
set updatetime=100
set wildmenu
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$

" Mouse
set mouse=a
set ttymouse=xterm2

" Theme
colorscheme gruvbox
set background=dark

" Airline
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_extensions = ['branch', 'tabline', 'hunks']

" NERDTree
nnoremap <silent> <Leader>e :NERDTreeToggle<CR>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
let NERDTreeMinimalUI = 1

" Tagbar
nnoremap <silent> <F8> :TagbarToggle<CR>

" FZF
let g:fzf_layout = { 'down': '~25%' }
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>c :Commands<CR>
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>r :Rg<CR>

" Rainbow Parentheses
let g:rainbow_active = 1

" Indent lines
let g:indentLine_char = '¦'

" Buffers
set hidden
nnoremap <silent> <Leader>n :bnext<CR>
nnoremap <silent> <Leader>p :bprev<CR>
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
set cursorline

" Set ruler
set colorcolumn=80,100,120
highlight ColorColumn ctermbg=236

" Italics
highlight Comment cterm=italic

" Search
set nohlsearch
set incsearch
set ignorecase smartcase

" Better diff colors
highlight DiffAdd    cterm=reverse ctermfg=darkgreen ctermbg=bg
highlight DiffDelete cterm=reverse ctermfg=red       ctermbg=bg
highlight DiffChange cterm=reverse ctermfg=yellow    ctermbg=bg
highlight DiffText   cterm=reverse ctermfg=blue      ctermbg=bg

