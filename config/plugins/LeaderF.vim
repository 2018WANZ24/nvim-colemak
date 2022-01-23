" ===
" === LeaderF
" ===
nnoremap <silent> <C-f> :Leaderf file<CR>
nnoremap <silent> <C-p> :Leaderf rg<CR>
nnoremap <silent> <C-w> :Leaderf buffer<CR>
nnoremap <silent> <C-s> :Leaderf line<CR>
nnoremap <silent> <C-c> :Leaderf command<CR>
let g:Lf_PreviewInPopup = 1
let g:Lf_PreviewCode = 1
let g:Lf_ShowHidden = 1
let g:Lf_CommandMap = {
\   '<C-k>': ['<C-u>'],
\   '<C-j>': ['<C-e>'],
\   '<C-]>': ['<C-v>'],
\   '<C-p>': ['<C-n>'],
\}
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
let g:Lf_WildIgnore = {
        \ 'dir': ['.git', 'vendor', 'node_modules'],
        \ 'file': ['__vim_project_root', 'class']
        \}
let g:Lf_UseMemoryCache = 0
let g:Lf_UseCache = 0
