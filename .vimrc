set nocompatible              
filetype plugin on

syntax enable

let mapleader="\<SPACE>"

" Source updates easily
nnoremap <Leader>s :so ~/.vimrc<CR>

" End of line
nnoremap ö $
vnoremap ö $

" Line numbering
set rnu nu

" Tabbing
set tabstop=2
set shiftwidth=2
set expandtab

set cursorline
hi CursorLine guibg=#454545

set scrolloff=20
