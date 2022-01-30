" ===
" === fzf.vim
" ===
nnoremap <C-f> :Files<CR>
nnoremap <C-p> :Rg<CR>
nnoremap <C-w> :Buffers<CR>
nnoremap <C-s> :BLines<CR>
nnoremap <C-c> :Commands<CR>
command! -bang -nargs=* Rg call fzf#vim#grep('rg --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1, fzf#vim#with_preview(), <bang>0)
