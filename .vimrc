set nocompatible              
filetype plugin on

syntax enable

call plug#begin('~/.vim/plugged')

Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'vimwiki/vimwiki'

call plug#end()

let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.wiki'}]
command VimwikiConvertMarkdown :! find ~/vimwiki/ -name "*.wiki" | while read i; do pandoc -f markdown -t html "$i" -o "${i\%.*}.html" -c ~/vimwiki/style/pandoc.css; done

let mapleader="\<SPACE>"
nnoremap <Leader>ö :VimwikiConvertMarkdown<CR>

set clipboard=unnamed,unnamedplus

" Line numbering
set rnu nu

" Tabbing
set tabstop=4
set shiftwidth=4
set expandtab

set termguicolors
" colorscheme wal
" Make it pretty
colorscheme nord
set cursorline
hi CursorLine guibg=#373f52
