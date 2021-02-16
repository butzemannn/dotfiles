syntax on
:imap jk <Esc>
"set number
set nocompatible
set encoding=utf-8
filetype plugin indent on

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'junegunn/fzf'
Plug 'vim-airline/vim-airline'
Plug 'preservim/vimux'

" Initialize plugin system
call plug#end()

" Vim-Airline
let g:airline#extensions#tabline#enabled = 1

" Prompt for a command to run
map <leader>vp :VimuxPromptCommand<cr></cr></leader>
