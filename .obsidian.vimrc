nmap ; :
vmap ; :

" ---- cursor movements ----
map 0 ^
map - g_
imap <c-l> <right>
map <c-h> <left>
imap <c-j> <down>
imap <c-k> <up>

" ---- Code formatting ----
" Alt key to move lines around
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Delete trailing white space on save
" autocmd BufWritePre * :%s/\s\+$//e

" Surround with bracket
vmap <leader>( <esc>`>a)<esc>`<i(<esc>
vmap <leader>[ <esc>`>a]<esc>`<i[<esc>
vmap <leader>{ <esc>`>a}<esc>`<i{<esc>
vmap <leader>" <esc>`>a"<esc>`<i"<esc>
vmap <leader>' <esc>`>a'<esc>`<i'<esc>
vmap <leader>` <esc>`>a`<esc>`<i`<esc>
