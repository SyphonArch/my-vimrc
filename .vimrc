colo slate
syntax enable

set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set shiftwidth=4

set autoindent

set number

filetype indent on

set wildmenu

set incsearch
set hlsearch

nnoremap \\ :nohlsearch<CR>   " \\ will turn off all highlights

inoremap jk <esc>
inoremap jj <esc>

" allows cursor change in tmux mode
if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

augroup configgroup
    autocmd!
    autocmd FileType cpp setlocal tabstop=2
    autocmd FileType cpp setlocal softtabstop=2
    autocmd FileType cpp setlocal shiftwidth=2
    autocmd FileType c setlocal tabstop=2
    autocmd FileType c setlocal softtabstop=2
    autocmd FileType c setlocal shiftwidth=2
augroup END
