set nocompatible

" Start Vundle ----------------------------------------
" -----------------------------------------------------

" Disable file type for vundle
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Themes/Interface
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'edkolev/tmuxline.vim'
Plugin 'morhetz/gruvbox'

" Utility
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" -----------------------------------------------------
" Stop Vundle -----------------------------------------

" Shared clipboard
set clipboard=unnamedplus

syntax on
set nowrap

" Show linenumbers
set number

" Proper Split
set splitbelow splitright

" Proper tabs
set tabstop=2
set shiftwidth=2
set expandtab

" Mouse Support
set ttymouse=xterm2
set mouse=a

" Theme
colorscheme gruvbox
set background=dark
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Enable highlighting of the current line
set cursorline

" Italics
highlight Comment cterm=italic

"NERDTree Config
nnoremap <F4> :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
