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

nnoremap \\ :nohlsearch<CR>   " \\ will turn off all highlights

inoremap jk <esc>

" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI="\<Esc>[5 q" " start insert mode
    let &t_EI="\<Esc>[0 q" " end insert mode
endif


" --------- Plugin related settings ---------

" NERDTree

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif


" Tagbar
nmap <C-k> :TagbarToggle<CR>
