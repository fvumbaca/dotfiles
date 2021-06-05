" Plugins
call plug#begin('~/.vim/plugged')

" Language support
Plug 'fatih/vim-go'
Plug 'hashivim/vim-terraform'
Plug 'dart-lang/dart-vim-plugin'

Plug 'joshdick/onedark.vim'

" Plug 'preservim/nerdtree'
"
Plug 'tpope/vim-fugitive'

" LSC plugins
" Plug 'natebosch/vim-lsc'
" Plug 'natebosch/vim-lsc-dart'

" LSP alternative
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

" Autocomplete
" Plug 'Shougo/deoplete.nvim'
" Plug 'lighttiger2505/deoplete-vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

" Helpers
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'christoomey/vim-tmux-navigator'

call plug#end()

" Vim Stuff
colorscheme onedark
set encoding=utf-8
set wrap
set hidden
set ttyfast
set showmode
set showcmd
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

set number
set relativenumber
set autoread
set history=1000
set spell

" LSC Stuff
" let g:lsc_server_commands = {'dart': 'dart_language_server'}
let g:lsc_server_commands = {'go': 'gopls'}
let g:lsc_auto_map = v:true
let g:dart_format_on_save = 0

" Needed for autocomplete
" let g:deoplete#enable_at_startup = 1

" Dart
let g:dart_style_guide = 0
autocmd BufWritePost */lib/*.dart :call FlutterHotReload() " Depends on custom flutter plugin

" Go
let g:go_fmt_command = "goimports"

