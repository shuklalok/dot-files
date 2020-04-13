" ===================================
" vim-plug
" ===================================
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'ap/vim-buftabline'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'luochen1990/rainbow'
Plug 'Yggdroot/indentLine'
call plug#end()
" ===================================

" Basics
set nowrap
set wildmenu
set laststatus=2

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
let g:buftabline_numbers = 1

" NERDTree
nnoremap <silent> <Leader>e :NERDTreeToggle<CR>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
let NERDTreeMinimalUI = 1

" Tagbar
nnoremap <silent> <F8> :TagbarToggle<CR>

" FZF
let g:fzf_layout = { 'down': '~25%' }
nnoremap <silent> <Leader>f :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <silent> <Leader>c :Commands<CR>
nnoremap <silent> <Leader>r :Rg<CR>

" Gitgutter
let g:gitgutter_preview_win_floating = 1
set updatetime=1000

" Rainbow Parentheses
let g:rainbow_active = 1

" Indent lines
let g:indentLine_char = '¦'

" Find files
set path=**

" Buffers
set hidden
nnoremap <silent> <Leader>w :bd<CR>
nnoremap <silent> <Leader>n :bnext<CR>
nnoremap <silent> <Leader>p :bprev<CR>

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
highlight Comment cterm=italic gui=italic

" Search
set nohlsearch
set incsearch
set ignorecase smartcase

" Better diff colors
highlight DiffAdd    cterm=reverse ctermfg=darkgreen ctermbg=bg
highlight DiffDelete cterm=reverse ctermfg=red       ctermbg=bg
highlight DiffChange cterm=reverse ctermfg=yellow    ctermbg=bg
highlight DiffText   cterm=reverse ctermfg=blue      ctermbg=bg

