set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

source ~/.vimrc

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/goyo.vim'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'sheerun/vim-polyglot'

Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

" Colors 
set termguicolors

"let colorlist = ['mirage', 'light', 'dark']
"let colortoggle = 0
"let ayucolor = colorlist[colortoggle]
"command! AyuToggle :let colortoggle = float2nr(fmod(colortoggle+1, 3)) | let ayucolor = colorlist[colortoggle] | colorscheme ayu
"nnoremap <Leader>ct :AyuToggle<CR>

"let g:dracula_colorterm = 0
"colorscheme dracula
colorscheme gruvbox

command! BgToggle :let &background = ( &background == "dark" ? "light" : "dark" )
nnoremap <Leader>bg :BgToggle<CR>
let g:one_allow_italics = 1

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='gruvbox'


" Random defaults
let mapleader="\<SPACE>"

set updatetime=50

" ////////
" Wiki
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

" Use <C-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <C-space> coc#refresh()
else
  inoremap <silent><expr> <C-@> coc#refresh()
endif

" Auto-import
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" 'Go To' code navigation.
nmap <leader>df <Plug>(coc-definition)
nmap <leader>dc <Plug>(coc-declaration)
nmap <leader>y <Plug>(coc-type-definition)
nmap <leader>i <Plug>(coc-implementation)
nmap <leader>rf <Plug>(coc-references)

" Refactoring
nmap <leader>r <Plug>(coc-refactor)

" Function signature helper
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')

" TSX extra
augroup ReactFiletypes
  autocmd!
  autocmd BufRead,BufNewFile *.jsx set filetype=javascriptreact
  autocmd BufRead,BufNewFile *.tsx set filetype=typescriptreact
augroup END
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

" ////////////////
" FZF
nnoremap <Leader>f :FZF<CR>
nnoremap <Leader>F :Rg<CR>
" \\\\\\\\\\\\\\\\

" ////////////////
" Treesitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}
EOF
" \\\\\\\\\\\\\\\\

