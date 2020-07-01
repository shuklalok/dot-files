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
"-----------------------------------------------------------------------------
" gcc to comment out a line (takes a count) - like 3gcc
" gc to comment out the target of a motion (h,j,k,l,^,$,H,M,L etc.)
"     for example, gcap to comment out a paragraph, code block
"                  (BONUS - cut a code block with dL)
"                  gc4j - comment this plus 4 lines below
" gc in visual mode to comment out the selection,
" gc in operator pending mode to target a comment.
" As a command, either with a range like :7,17Commentary
" or as part of a :global invocation like with :g/TODO/Commentary.
Plug 'tpope/vim-commentary'
"-----------------------------------------------------------------------------
" ysiw"eysiw}eysiw{ - to enclose var in jinja as in Ansible.
" ds{ds}ds" is to reverse
Plug 'tpope/vim-surround'
"-----------------------------------------------------------------------------
" Rainbow colors for nested braces, Parentheses
Plug 'luochen1990/rainbow'
"-----------------------------------------------------------------------------
" [e current line exchange with above
" ]e current line exchange with below
" [f open in buffer the alphabetically prev file in current directory
" ]f open in buffer the alphabetically next file in current directory
" Toggles -
"           yos - spelling
"           yon - number
"           yor - relativenumber
"           yoh - highlight search
"           yoc - cursorline
"           you - cursocolumn
"           yox - crosshair
"           yow - wrap
"           yob - dark Off, light On
" BEST FOR SHORTCUTs
Plug 'tpope/vim-unimpaired'
"-----------------------------------------------------------------------------
" Just write the file :w!
Plug 'scrooloose/syntastic'
"-----------------------------------------------------------------------------
" Plug 'vim-scripts/AutoComplPop'
" Language specifics
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'SirVer/ultisnips'
Plug 'phenomenes/ansible-snippets'
" Briefly highlight which text was yanked.
Plug 'machakann/vim-highlightedyank'
" Atom One Dark theme.
Plug 'joshdick/onedark.vim'
" Better display unwanted whitespace.
Plug 'ntpeters/vim-better-whitespace'
" Lightline
Plug 'itchyny/lightline.vim'
" Quick Scope
Plug 'unblevable/quick-scope'
" TagbarToggle
Plug 'majutsushi/tagbar'
" Enable Deoplete
let g:deoplete#enable_at_startup = 1
" ==============================================
call plug#end()
" ==============================================
"-----------------------------------------------------------------------------
" Map leader
let mapleader=" "
let maplocalleader=" "
" Basics
set completeopt=menuone,longest
set cursorline
set diffopt+=vertical
set hidden
set noswapfile
set path=**
set shortmess+=c
set signcolumn=yes
set updatetime=50
inoremap jj <Esc><Esc>
nnoremap <silent> <M-z> :set wrap!<CR>
nnoremap <silent> <F4> :setlocal spell! spelllang=en_us<CR>
nnoremap <silent> <M-x> :e ~/.config/nvim/init.vim<CR>
map <silent> <M-s> :source ~/.config/nvim/init.vim<CR>
" map <Leader>sv :source ~/.config/nvim/init.vim<CR>

"-----------------------------------------------------------------------------
" Color settings
" Enable 24-bit true colors if your terminal supports it.
if (has("termguicolors"))
  " https://github.com/vim/vim/issues/993#issuecomment-255651605
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
" Enable syntax highlighting.
syntax on
" Set the color scheme.
colorscheme onedark
" Set the color scheme to dark.
set background=dark
" lightline
set noshowmode
let g:lightline = { 'colorscheme': 'onedark' }

" Theme
" colorscheme gruvbox
" set background=dark

" Buftabline
let g:buftabline_show = 2
let g:buftabline_indicators = 1

" NERDTree
nnoremap <silent> <M-e> :NERDTreeToggle<CR>
nnoremap <silent> <M-v> :NERDTreeFind<CR>
let g:NERDTreeMinimalUI = 1
let g:NERDTreeShowHidden = 1

" FZF
" let g:fzf_layout = { 'down': '~25%' }
" nnoremap <silent> <M-b> :Buffers<CR>
" nnoremap <silent> <C-p> :Files<CR>
" nnoremap <silent> <M-f> :Rg<CR>

" vim-fugitive
nnoremap <silent> <M-g> :Gstatus<CR>

" Rainbow Parentheses
let g:rainbow_active = 1

" Shared clipboard
set clipboard=unnamedplus

" Show linenumbers
set number relativenumber

" Show hidden characters
set list listchars=tab:>-,trail:·,extends:>,precedes:<,eol:↵,nbsp:˽

" Proper split
set splitbelow splitright

" Proper tabs
set expandtab smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Set ruler
set colorcolumn=80,100,120
highlight ColorColumn ctermbg=236

" Comments
highlight Comment cterm=italic

" Visual mode
highlight Visual cterm=NONE ctermfg=bg ctermbg=yellow

" Spell check
highlight SpellBad cterm=underline ctermfg=red

" Search
"set nohlsearch
set ignorecase

" Better diff colors
highlight DiffAdd    cterm=reverse ctermfg=darkgreen ctermbg=bg
highlight DiffDelete cterm=reverse ctermfg=red       ctermbg=bg
highlight DiffChange cterm=reverse ctermfg=yellow    ctermbg=bg
highlight DiffText   cterm=reverse ctermfg=blue      ctermbg=bg
"-----------------------------------------------------------------------------
" SirVer/ultisnips
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"-----------------------------------------------------------------------------
" Convert the selected text's title case using the external tcc script.
"   Requires https://github.com/nickjj/title-case-converter
vnoremap <Leader>hc c<C-r>=system('tcc', getreg('"'))[:-2]<CR>

" Navigate the complete menu items like CTRL+n / CTRL+p would.
inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"

" Select the complete menu item like CTRL+y would.
inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
inoremap <expr> <CR> pumvisible() ? "<C-y>" :"<CR>"

" Cancel the complete menu item like CTRL+e would.
inoremap <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"
"-----------------------------------------------------------------------------
" Search Filename for Fuzzy and in file content for RipGrep
" FZF
let g:fzf_layout = { 'down': '~25%' }
command! -bang -nargs=* Rg
      \ call fzf#vim#grep('rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
      \ fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}), <bang>0)
nnoremap <silent> <M-b> :Buffers<CR>
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <M-f> :Rg<CR>
" Load Ctrl-P faster
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
"-----------------------------------------------------------------------------
" Syntax check for yaml files
let g:syntastic_yaml_checkers = ['yamllint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
map <leader>a :SyntasticCheck<CR>
map <leader>d :SyntasticReset<CR>
"-----------------------------------------------------------------------------
" Highlight yank text
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank("IncSearch", 300)
  augroup END
"-----------------------------------------------------------------------------
" restore place in file from previous session
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"-----------------------------------------------------------------------------
" Toggle line number relative/absolute
nmap <F6> :set invrelativenumber<CR>
"-----------------------------------------------------------------------------
" Toggle visually showing all whitespace characters.
noremap <F7> :set list!<CR>
inoremap <F7> <C-o>:set list!<CR>
cnoremap <F7> <C-c>:set list!<CR>
"-----------------------------------------------------------------------------
" ntpeters/vim-better-whitespace
let g:strip_whitespace_confirm=0
let g:strip_whitelines_at_eof=1
let g:strip_whitespace_on_save=1
" -----------------------------------------------------------------------------
" Clear search highlights.
map <Leader><Space> :let @/=''<CR>
" -----------------------------------------------------------------------------
" Press * to search for the term under the cursor or a visual selection and
" then press a key below to replace all instances of it in the current file.
nnoremap <Leader>r :%s///g<Left><Left>
nnoremap <Leader>rc :%s///gc<Left><Left><Left>
" -----------------------------------------------------------------------------
" Type a replacement term and press . to repeat the replacement again. Useful
" for replacing a few instances of the term (comparable to multiple cursors).
nnoremap <silent> s* :let @/='\<'.expand('<cword>').'\>'<CR>cgn
xnoremap <silent> s* "sy:let @/=@s<CR>cgn
" -----------------------------------------------------------------------------
" unblevable/quick-scope
" Trigger a highlight in the appropriate direction when pressing these keys.
let g:qs_highlight_on_keys=['f', 'F', 't', 'T']
" Only underline the highlights instead of using custom colors.
highlight QuickScopePrimary gui=underline cterm=underline
highlight QuickScopeSecondary gui=underline cterm=underline
" -----------------------------------------------------------------------------
" code folding
set foldmethod=indent
set foldlevel=99
" indent/unindent with tab/shift-tab
nmap <Tab> >>
imap <S-Tab> <Esc><<i
nmap <S-tab> <<
" word movement
imap <S-Left> <Esc>bi
nmap <S-Left> b
imap <S-Right> <Esc><Right>wi
nmap <S-Right> w
" move through split windows
nmap <leader><Up> :wincmd k<CR>
nmap <leader><Down> :wincmd j<CR>
nmap <leader><Left> :wincmd h<CR>
nmap <leader><Right> :wincmd l<CR>
" move through buffers
nmap <leader>[ :bp!<CR>
nmap <leader>] :bn!<CR>
nmap <leader>x :bd<CR>
" copy, cut and paste
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa
" disable autoindent when pasting text
" source: https://coderwall.com/p/if9mda/automatically-set-paste-mode-in-vim-when-pasting-in-insert-mode
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

function! XTermPasteBegin()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()
" -----------------------------------------------------------------------------
" wrap toggle
setlocal wrap
noremap <silent> <Leader>w :call ToggleWrap()<CR>
function ToggleWrap()
    if &wrap
        echo "Wrap OFF"
        setlocal nowrap
        set virtualedit=all
        silent! nunmap <buffer> <Up>
        silent! nunmap <buffer> <Down>
        silent! nunmap <buffer> <Home>
        silent! nunmap <buffer> <End>
        silent! iunmap <buffer> <Up>
        silent! iunmap <buffer> <Down>
        silent! iunmap <buffer> <Home>
        silent! iunmap <buffer> <End>
    else
        echo "Wrap ON"
        setlocal wrap linebreak nolist
        set virtualedit=
        setlocal display+=lastline
        noremap  <buffer> <silent> <Up>   gk
        noremap  <buffer> <silent> <Down> gj
        noremap  <buffer> <silent> <Home> g<Home>
        noremap  <buffer> <silent> <End>  g<End>
        inoremap <buffer> <silent> <Up>   <C-o>gk
        inoremap <buffer> <silent> <Down> <C-o>gj
        inoremap <buffer> <silent> <Home> <C-o>g<Home>
        inoremap <buffer> <silent> <End>  <C-o>g<End>
    endif
endfunction
" -----------------------------------------------------------------------------
" mouse toggle
set mouse=a
let g:is_mouse_enabled = 1
noremap <silent> <Leader>m :call ToggleMouse()<CR>
function ToggleMouse()
    if g:is_mouse_enabled == 1
        echo "Mouse OFF"
        set mouse=
        let g:is_mouse_enabled = 0
    else
        echo "Mouse ON"
        set mouse=a
        let g:is_mouse_enabled = 1
    endif
endfunction
" -----------------------------------------------------------------------------
" tag list - toggle
map <leader>t :TagbarToggle<CR>
