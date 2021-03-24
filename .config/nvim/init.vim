set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

call plug#begin('~/.vim/plugged')

Plug 'dracula/vim'
Plug 'arcticicestudio/nord-vim'
Plug 'ayu-theme/ayu-vim' 
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'rakr/vim-one'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/goyo.vim'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'vimwiki/vimwiki'

Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plug 'lervag/vimtex'

call plug#end()

" Colors 
set termguicolors

"let colorlist = ['mirage', 'light', 'dark']
"let colortoggle = 0
"let ayucolor = colorlist[colortoggle]
"command! AyuToggle :let colortoggle = float2nr(fmod(colortoggle+1, 3)) | let ayucolor = colorlist[colortoggle] | colorscheme ayu
"nnoremap <Leader>ct :AyuToggle<CR>

"colorscheme one
"colorscheme challenger_deep

colorscheme dracula

command! BgToggle :let &background = ( &background == "dark" ? "light" : "dark" )
nnoremap <Leader>bg :BgToggle<CR>
let g:one_allow_italics = 1

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dracula'
"let g:airline_theme='challenger_deep'


" Random defaults
let mapleader="\<SPACE>"

set updatetime=50

" ////////////////
" vimwiki settings
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.wiki'}]
" command VimwikiConvertMarkdown :! find ~/vimwiki/ -name "*.wiki" | while read i; do pandoc -f markdown -t html "$i" -o "${i\%.*}.html" -c ~/vimwiki/style/pandoc.css; done

nnoremap <Leader>ö :VimwikiConvertMarkdown<CR>
" \\\\\\\\\\\\\\\\

" ////////
" My own wiki!
nnoremap <Leader>wi :! git add . && git cm -m "Update" && git pu<CR>
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

" ////////////////
" Goyo
nnoremap <Leader>G :Goyo<CR>
" \\\\\\\\\\\\\\\\

" ////////////////
" LaTeX
"let g:vimtex_view_general_viewer = 'okular'
"let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
"let g:vimtex_view_general_options_latexmk = '--unique'
"let g:vimtex_quickfix_latexlog = {'default' : 0}
"set spelllang=en_us
"set spell

" Quick-push report
"nnoremap <Leader>L :! git add ./report.tex && git commit -m "Adam update" && git push
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
"
" ////////////////
" FZF
nnoremap <Leader>f :FZF<CR>
nnoremap <Leader>F :Rg<CR>
" \\\\\\\\\\\\\\\\
