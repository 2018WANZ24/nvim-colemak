" ===
" === coc.nvim
" ===
let g:coc_global_extensions = [
	\ 'coc-explorer',
	\ 'coc-flutter-tools',
	\ 'coc-git',
  \ 'coc-go',
	\	'coc-highlight',
	\ 'coc-json',
	\ 'coc-lists',
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

autocmd CursorHold * silent call CocActionAsync('highlight')

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

nnoremap <silent><nowait><expr> <M-]> coc#float#has_scroll() ? coc#float#scroll(1) : "\<M-]>"
nnoremap <silent><nowait><expr> <M-[> coc#float#has_scroll() ? coc#float#scroll(0) : "\<M-[>"
inoremap <silent><nowait><expr> <M-]> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<M-]>"
inoremap <silent><nowait><expr> <M-[> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<M-[>"
vnoremap <silent><nowait><expr> <M-]> coc#float#has_scroll() ? coc#float#scroll(1) : "\<M-]>"
vnoremap <silent><nowait><expr> <M-[> coc#float#has_scroll() ? coc#float#scroll(0) : "\<M-[>"

" coc-snippets
let g:coc_snippet_next = '<C-q><C-e>'
let g:coc_snippet_prev = '<C-q><C-n>'
let g:snips_author = '2018WANZ24'

" === coc-flutter-tools
nnoremap <silent> <Space>ol :CocCommand flutter.toggleOutline<CR>

" === coc-explorer
nnoremap <silent> <Space>t :CocCommand explorer<CR>

" === coc-yank
nnoremap <silent> <Space>y :<C-u>CocList -A --normal yank<CR>

" === coc-translator
nmap ts <Plug>(coc-translator-p)

" === coc-lists
nnoremap <silent> <C-q><C-f> :CocList files<CR>
nnoremap <silent> <C-q><C-p> :CocList grep<CR>
nnoremap <silent> <C-q><C-a> :CocList buffers<CR>
nnoremap <silent> <C-q><C-s> :CocList lines<CR>
nnoremap <silent> <C-q><C-z> :CocList vimcommands<CR>

" === coc-git
nmap g- <Plug>(coc-git-prevchunk)
nmap g= <Plug>(coc-git-nextchunk)
nmap gf <Plug>(coc-git-prevconflict)
nmap gF <Plug>(coc-git-nextconflict)
nmap H <Plug>(coc-git-chunkinfo)
omap kg <Plug>(coc-git-chunk-inner)
xmap kg <Plug>(coc-git-chunk-inner)
omap ag <Plug>(coc-git-chunk-outer)
xmap ag <Plug>(coc-git-chunk-outer)
