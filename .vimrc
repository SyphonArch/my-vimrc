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

" \\ will turn off all highlights
nnoremap \\ :nohlsearch<CR>

inoremap jk <esc>

" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI="\<Esc>[5 q" " start insert mode
    let &t_EI="\<Esc>[0 q" " end insert mode
endif
