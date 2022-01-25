" ===
" === fzf.vim
" ===
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <C-p> :Rg<CR>
nnoremap <silent> <C-w> :Buffers<CR>
nnoremap <silent> <C-s> :BLines<CR>
nnoremap <silent> <C-c> :Commands<CR>
let g:fzf_buffers_jump = 1
command! -bang -nargs=* Rg call fzf#vim#grep('rg --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1, fzf#vim#with_preview(), <bang>0)
