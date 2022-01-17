" ===
" === vista.vim
" ===
noremap <silent> <Space>v :Vista!!<CR>
noremap <silent> <C-t> :silent! Vista finder coc<CR>
let g:vista_default_executive = 'coc'
let g:vista_fzf_preview = ['right:50%']
let g:vista_sidebar_open_cmd = 'set splitright|30vsplit'
let g:vista_echo_cursor = 0
let g:vista_update_on_text_changed = 1
let g:vista_stay_on_open = 0
let g:vista_blink = [0, 0]
let g:vista_top_level_blink = [0, 0]
