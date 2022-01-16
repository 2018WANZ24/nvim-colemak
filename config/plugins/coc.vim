" ===
" === coc.nvim
" ===
let g:coc_global_extensions = [
	\ 'coc-explorer',
	\ 'coc-flutter-tools',
  \ 'coc-go',
	\ 'coc-json',
  \ 'coc-pairs',
	\ 'coc-python',
	\ 'coc-pyright',
  \ 'coc-snippets',
	\ 'coc-vimlsp',
  \ 'coc-yaml',
	\ 'coc-yank',]

inoremap <silent><expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

nmap <silent> gek <Plug>(coc-diagnostic-prev)
nmap <silent> gej <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> <Space>h :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <nowait> mr <Plug>(coc-rename)
xmap maf <Plug>(coc-format-selected)
nmap maf <Plug>(coc-format-selected)

xmap maw <Plug>(coc-codeaction-selected)
nmap maw  <Plug>(coc-codeaction-selected)w

xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

nnoremap <silent><nowait><expr> <C-]> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-]>"
nnoremap <silent><nowait><expr> <C-[> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-[>"

" coc-snippets
let g:coc_snippet_next = '<C-n>'
let g:coc_snippet_prev = '<C-p>'
let g:snips_author = '2018WANZ24'

" === coc-flutter-tools
nmap <silent> <Space>ol :CocCommand flutter.toggleOutline<CR>

" === coc-explorer
nmap <silent> tt :CocCommand explorer<CR>

" === coc-yank
nmap <silent> <Space>y :<C-u>CocList -A --normal yank<CR>
