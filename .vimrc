set nocompatible              
filetype plugin on

syntax enable

call plug#begin('~/.vim/plugged')

Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'vimwiki/vimwiki'
Plug 'junegunn/goyo.vim'
Plug 'preservim/nerdtree'

call plug#end()

" vimwiki settings
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.wiki'}]
command VimwikiConvertMarkdown :! find ~/vimwiki/ -name "*.wiki" | while read i; do pandoc -f markdown -t html "$i" -o "${i\%.*}.html" -c ~/vimwiki/style/pandoc.css; done

let mapleader="\<SPACE>"
nnoremap <Leader>ö :VimwikiConvertMarkdown<CR>

" Clipboard
set clipboard=unnamed,unnamedplus

" Goyo
nnoremap <Leader>G :Goyo<CR>

" NERDTree
nnoremap <Leader>n :NERDTreeToggle<CR>

" Line numbering
set rnu nu

" Tabbing
set tabstop=4
set shiftwidth=4
set expandtab

" Colors (needed for nord-vim on Regolith)
set termguicolors
" colorscheme wal
" Make it pretty
colorscheme nord
set cursorline
hi CursorLine guibg=#373f52
