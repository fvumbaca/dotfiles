set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set exrc
set relativenumber
set number
set noerrorbells
set hidden
set wrap


set autoread
" set encoding=utf-8

set ttyfast
set showmode
set showcmd
set nohlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

set history=1000
set spell

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set incsearch
set termguicolors
set scrolloff=8

set completeopt=menuone,noinsert,noselect
set colorcolumn=80
set signcolumn=yes

set cmdheight=2
set updatetime=50

" map <leader><space> :let @/=''<cr> " clear search

" Plugins
call plug#begin('~/.vim/plugged')

" Color theme
Plug 'joshdick/onedark.vim'

" Language support
Plug 'fatih/vim-go'
Plug 'hashivim/vim-terraform'
Plug 'dart-lang/dart-vim-plugin'

" LSP alternative
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

" Autocomplete
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

" Helpers/Utils
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'christoomey/vim-tmux-navigator'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

call plug#end()

colorscheme onedark
" highlight Normal guibg=none


" " LSC Stuff
" " let g:lsc_server_commands = {'dart': 'dart_language_server'}
" let g:lsc_server_commands = {'go': 'gopls'}
" let g:lsc_auto_map = v:true
" let g:dart_format_on_save = 0

" " Needed for autocomplete
" " let g:deoplete#enable_at_startup = 1

" Tmux aliases
nmap <leader>t :silent exec "!tmux split-window -v -p 20"<CR>
nmap <leader>T :silent exec "!tmux split-window -h -p 35"<CR>

" Git
nmap <leader>gR :Gread<CR>
nmap <leader>gg :Git<CR>

" Utility
map! <leader>r :source ~/.config/nvim/init.vim<CR>


nnoremap <SPACE> <Nop>
let mapleader=" "
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep for >")})<CR>

augroup AUTO_MY_LIFE
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e " Remove whitespace
augroup END
