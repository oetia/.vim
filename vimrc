
""" Vi Incompatible """
set nocompatible

""" Space as Leader Key """
nmap <SPACE> <Nop>
let g:mapleader = " "

""" Reload VIMRC """
nmap <Leader>r :source $MYVIMRC<CR>

""" Copy Paste " "
set clipboard^=unnamed,unnamedplus

""" Backspace in Insert """
set backspace=indent,eol,start

""" Numbered Lines """
set number

""" Line Wrap """
set wrap
set linebreak

""" Line Wrap Movement """
nmap j gj
nmap k gk
vmap j gj
vmap k gk

""" <ESC> Alternatives """
imap JK <Esc>
imap KJ <Esc>

""" Smooth Scrolling """
set smoothscroll
nmap J <C-e>
nmap K <C-y>
nmap [ <C-e>
nmap ] <C-y>

""" NetRW """
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 25
nmap <Leader>e :Lexplore<CR>

source ~/.vim/test.vim

nmap <expr> \ Composed()
" vmap <expr> \ Composed()
command Translate :call Composed()<CR>
" nmap \ :Translate<CR>
vmap \ :<BS><BS><BS><BS><BS>Translate<CR>

