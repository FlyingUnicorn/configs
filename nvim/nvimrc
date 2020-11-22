call plug#begin(stdpath('data') . '/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'liuchengxu/vim-which-key'

call plug#end()

" -= General =-
set number

" -= Color / Theme =-
let g:impact_transbg=1
colorscheme evening
set termguicolors
set t_Co=256

" -= FZF =-
let g:fzf_preview_window = ['up:50%', 'ctrl-/']

" -= WhichKey =-
set notimeout
set timeoutlen=500
let g:mapleader  = "\<Space>"
call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

" Hide status line 
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


let g:which_key_map =  {}
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \    'b' : [':Buffers', 'List'],
      \    'l' : ['blast',     'Last'],
      \    'p' : ['bprevious', 'Prev.'],
      \    'n' : ['bnext',     'Next'],
      \    'd' : ['bd',        'Delete'],
      \ }
let g:which_key_map.q = {
      \ 'name' : '+Qq',
      \    'r' : [':source $MYVIMRC', 'Reload config'],
      \ }
let g:which_key_map.g = {
      \ 'name' : '+Git',
      \    's' : [':GFiles?', 'Git Status'],
      \ }
let g:which_key_map.s = {
      \ 'name' : '+Search',
      \    'p' : [':Rg!', 'RipGrep'],
      \    'b' : [':BLines', 'Current Buffer'],
      \ }
let g:which_key_map.f = {
      \ 'name' : '+Files',
      \    'g' : [':GFiles', 'Git Files'],
      \ }
