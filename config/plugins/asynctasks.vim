" ===
" === asynctasks.vim
" ===
let g:asyncrun_open = 6
let g:asyncrun_rootmarks = ['.git', '.svn', '.root', '.project', '.hg']
let g:asynctasks_term_rows = 10
let g:asynctasks_term_cols = 80
noremap <silent> <Space>rf :AsyncTask file-run<CR>
noremap <silent> <Space>bf :AsyncTask file-build<CR>
noremap <silent> <Space>rp :AsyncTask project-run<CR>
noremap <silent> <Space>bp :AsyncTask project-build<CR>
noremap gpu :AsyncRun git push -u origin master<CR>
noremap gpf :AsyncRun git push -f origin master<CR>
