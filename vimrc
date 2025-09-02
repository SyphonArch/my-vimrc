set encoding=utf-8

colo slate
syntax enable

set confirm

set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set shiftwidth=4

set autoindent

set backspace=indent,eol,start

set number

filetype indent on

set wildmenu

set incsearch
set hlsearch

" Following two lines make searches case sensitive only if uppercase letter is found in query
set ignorecase
set smartcase

set mouse=a

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

inoremap kj <esc>
xnoremap kj <esc>

" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\033[5 q" " start INSERT mode
    let &t_SR = "\033[4 q" " start REPLACE mode
    let &t_EI = "\033[2 q" " end INSERT mode
else
    let &t_SI="\<Esc>[5 q" " start INSERT mode
    let &t_SR="\<Esc>[4 q" " start REPLACE mode
    let &t_EI="\<Esc>[2 q" " end INSERT mode
endif

" Cursor settings:
"   1 -> blinking block
"   2 -> solid block 
"   3 -> blinking underscore
"   4 -> solid underscore
"   5 -> blinking vertical bar
"   6 -> solid vertical bar


" --------- Custom Shortcuts ---------
" Set leader key to space
let mapleader = " "

"  Search for today's date - useful for journal entries
nnoremap <Leader>d :execute "/\\V" . strftime("%y.%m.%d.")<CR>

" Copy to system clipboard
vnoremap <Leader>y "+y

" Invoke NERDTree
nnoremap <Leader>t :NERDTree<CR>

" Toggle Tagbar
nnoremap <Leader>b :TagbarToggle<CR>

" --------- Plugin related settings ---------
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'ycm-core/YouCompleteMe'
Plug 'github/copilot.vim'

call plug#end()

" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" YCM
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

