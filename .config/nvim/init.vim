set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

call plug#begin('~/.vim/plugged')

Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
" Plug 'vimwiki/vimwiki'
Plug 'junegunn/goyo.vim'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'lervag/vimtex'

call plug#end()


colorscheme nord
" Feeling adventurous? 
" colorscheme dracula


let mapleader="\<SPACE>"

set updatetime=100


" ////////////////
" vimwiki settings
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.wiki'}]
" command VimwikiConvertMarkdown :! find ~/vimwiki/ -name "*.wiki" | while read i; do pandoc -f markdown -t html "$i" -o "${i\%.*}.html" -c ~/vimwiki/style/pandoc.css; done

nnoremap <Leader>ö :VimwikiConvertMarkdown<CR>
" \\\\\\\\\\\\\\\\

" ////////
" My own wiki!
nnoremap <Leader>W :! git add . && git cm -m "Update" && git pu<CR>
" \\\\\\\\

" ////////
" Easy source
nnoremap <Leader>S :source ~/.config/nvim/init.vim<CR>
" \\\\\\\\

" ////////////////
" Clipboard
set clipboard=unnamed,unnamedplus
" \\\\\\\\\\\\\\\\

" ////////////////
" Goyo
nnoremap <Leader>G :Goyo<CR>
" \\\\\\\\\\\\\\\\

" ////////////////
" \\\\\\\\\\\\\\\\

" ////////////////
" NERDTree
nnoremap <Leader>n :NERDTreeToggle<CR>
let g:NERDTreeWinSize=20
" \\\\\\\\\\\\\\\\

" ////////////////
" vim-gitgutter
nnoremap <Leader>g :GitGutterToggle<CR>
" \\\\\\\\\\\\\\\\

" ////////////////
" coc.nvim
" TextEdit might fail if hidden is not set.
set hidden

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" \\\\\\\\\\\\\\\\
