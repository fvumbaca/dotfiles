
let g:bujo#todo_file_path = $HOME . "/.cache/bujo"
let g:bujo#window_width = 40


nmap <leader>tt :botright Todo<CR>
nmap <leader>tT :botright Todo g<CR>

" nmap <leader>tG :r !grep -E '(TODO\|todo):?' -Rn .<CR>
" nmap <leader>tg :r !grep -E '(TODO\|todo):?' -Rn .<CR>

nmap <C-S> <Plug>BujoAddnormal<CR>
imap <C-S> <Plug>BujoAddinsert<CR>

nmap <C-Q> <Plug>BujoChecknormal<CR>
imap <C-Q> <Plug>BujoCheckinsert<CR>
