" ===
" === coc.nvim
" ===
let g:coc_global_extensions = [
	\ 'coc-explorer',
	\ 'coc-flutter-tools',
  \ 'coc-go',
	\ 'coc-json',
	\ 'coc-python',
	\ 'coc-pyright',
  \ 'coc-snippets',
	\ 'coc-translator',
	\ 'coc-vimlsp',
  \ 'coc-yaml',
	\ 'coc-yank',]

inoremap <silent><expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

nmap <silent> g[ <Plug>(coc-diagnostic-prev)
nmap <silent> g] <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

noremap <silent> <Space>h :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

nmap mr <Plug>(coc-rename)
xmap maf <Plug>(coc-format-selected)
nmap maf <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

xmap mas <Plug>(coc-codeaction-selected)
nmap mas <Plug>(coc-codeaction-selected)
nmap mac <Plug>(coc-codeaction)
nmap mf <Plug>(coc-fix-current)
nmap mal <Plug>(coc-codelens-action)

xmap kf <Plug>(coc-funcobj-i)
omap kf <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap kc <Plug>(coc-classobj-i)
omap kc <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

nnoremap <silent><nowait><expr> <C-]> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-]>"
nnoremap <silent><nowait><expr> <C-[> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-[>"
inoremap <silent><nowait><expr> <C-]> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<C-]>"
inoremap <silent><nowait><expr> <C-[> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<C-[>"
vnoremap <silent><nowait><expr> <C-]> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-]>"
vnoremap <silent><nowait><expr> <C-[> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-[>"

" coc-snippets
let g:coc_snippet_next = '<C-e>'
let g:coc_snippet_prev = '<C-n>'
let g:snips_author = '2018WANZ24'

" === coc-flutter-tools
nnoremap <silent> <Space>ol :CocCommand flutter.toggleOutline<CR>

" === coc-explorer
nnoremap <silent> tt :CocCommand explorer<CR>

" === coc-yank
nnoremap <silent> <Space>y :<C-u>CocList -A --normal yank<CR>

" === coc-translator
nmap ts <Plug>(coc-translator-p)
