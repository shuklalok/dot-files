" ==============================================
" vim-plug
" ==============================================
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'majutsushi/tagbar'
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
set laststatus=2
set nowrap
set path=**
set signcolumn=yes
set updatetime=300
set wildmenu
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$

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
nnoremap <silent> <Leader>e :NERDTreeToggle<CR><C-w>l:call SyncTree()<CR>
let NERDTreeMinimalUI = 1

" Auto open NERDTree
autocmd VimEnter * if argc() == 0 | NERDTree | endif
autocmd VimEnter * wincmd w

" Check if NERDTree is open or active
function! IsNERDTreeOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction

" Call NERDTreeFind if NERDTree is active, current window contains a modifiable
" file and we're not in vimdiff
function! SyncTree()
  if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
    wincmd p
  endif
endfunction

" Highlight currently open buffer in NERDTree
autocmd BufRead * call SyncTree()

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
nnoremap <silent> <Leader>n :bnext<CR>:call SyncTree()<CR>
nnoremap <silent> <Leader>p :bprev<CR>:call SyncTree()<CR>
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

" Search
set nohlsearch
set incsearch
set ignorecase smartcase

" Better diff colors
highlight DiffAdd    cterm=reverse ctermfg=darkgreen ctermbg=bg
highlight DiffDelete cterm=reverse ctermfg=red       ctermbg=bg
highlight DiffChange cterm=reverse ctermfg=yellow    ctermbg=bg
highlight DiffText   cterm=reverse ctermfg=blue      ctermbg=bg
