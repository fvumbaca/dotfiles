
let mapleader=" "
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
Plug 'vuciv/vim-bujo'

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

" Quick Fix
nmap <leader>kk :lopen<CR>
nmap <leader>kn :lnext<CR>
nmap <leader>kg :copen<CR>
nmap <leader>km :cnext<CR>

nnoremap <SPACE> <Nop>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep for >")})<CR>

augroup AUTO_MY_LIFE
    autocmd!
    autocmd BufWritePre * %s/\s\+$//e " Remove whitespace
augroup END
