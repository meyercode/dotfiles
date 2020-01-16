set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'

call plug#end()

" Line numbering
set rnu nu

" Tabbing
set tabstop=4
set shiftwidth=4
set expandtab

set clipboard+=unnamedplus

" colorscheme wal
" Make it pretty
" colorscheme nord
colorscheme nord
set cursorline
hi CursorLine guibg=#373f52
