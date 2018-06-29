set nocompatible              " be iMproved required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'myusuf3/numbers.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'ervandew/supertab'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Put your non-Plugin stuff after this line
"
set clipboard=unnamedplus
"
" Theme
colorscheme gruvbox
set background=dark "dark mode
let g:gruvbox_contrast='hard'
let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

"
"NERDTree Config
nnoremap <F4> :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
