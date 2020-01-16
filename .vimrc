set nocompatible              
filetype plugin on
syntax on

call plug#begin('~/.vim/plugged')

Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'vimwiki/vimwiki'

call plug#end()

let g:vimwiki_list = [{'path': '~/vimwiki/','syntax': 'markdown', 'ext': '.md'}]
command VimwikiConvertMarkdown :! find ~/vimwiki/ -name "*.md" | while read i; do pandoc "$i" -o "${i\%.*}.html" -c ~/vimwiki/style/pandoc.css; done
map <Leader>ö :VimwikiConvertMarkdown<CR>

" Line numbering
set rnu nu

" Tabbing
set tabstop=4
set shiftwidth=4
set expandtab

set clipboard+=unnamed

" colorscheme wal
" Make it pretty
" colorscheme nord
colorscheme nord
set cursorline
hi CursorLine guibg=#373f52

let mapleader=","
