if empty(glob($HOME.'/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

set encoding=utf-8
set fileencodings=utf-8
set termencoding=utf-8
set clipboard+=unnamedplus
set noswapfile
set number
set relativenumber
set cursorline
set hidden
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set scrolloff=4
set ttimeoutlen=0
set notimeout
set foldmethod=indent
set foldlevel=30
set noshowmode
set noshowcmd
set ignorecase
set smartcase
set shortmess+=c
set history=50
set updatetime=100
set termguicolors

silent !mkdir -p $HOME/.config/nvim/tmp/backup
silent !mkdir -p $HOME/.config/nvim/tmp/undo
set backupdir=$HOME/.config/nvim/tmp/backup,.
set directory=$HOME/.config/nvim/tmp/backup,.
set undofile
set undodir=$HOME/.config/nvim/tmp/undo,.

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

noremap u k
noremap n h
noremap e j
noremap i l
noremap l u
noremap k i
noremap K I
noremap h e
noremap - N
noremap = n
source ~/.config/nvim/config/cursor.vim

inoremap <C-e> <Down>
inoremap <C-u> <Up>
cnoremap <C-y> <Down>
cnoremap <C-l> <Up>
noremap! <C-n> <Left>
noremap! <F1> <Right>
noremap! <C-a> <Home>
noremap! <C-o> <End>
inoremap <C-p> <Esc>pa

noremap <C-u> <C-b>
noremap <C-e> <C-f>
noremap <C-n> <C-u>
noremap <F1> <C-d>
noremap N ^
noremap I $
noremap W 5w
noremap B 5b
noremap > >>
noremap < <<
noremap ` ~
noremap ; :
nnoremap dy d%
nnoremap vv ^v$h
nnoremap <M-v> v$h
nnoremap <silent> <Space><CR> :nohlsearch<CR>
nnoremap <silent> q :q<CR>
nnoremap S :w<CR>
nnoremap <M-s> :source $HOME/.config/nvim/init.vim<CR>
nnoremap <C-c> :cd<Space>

" Window
nnoremap s <nop>
nnoremap <silent> sN :set nosplitright<CR>:vsplit<CR>
nnoremap <silent> sE :set splitbelow<CR>:split<CR>
nnoremap <silent> sU :set nosplitbelow<CR>:split<CR>
nnoremap <silent> sI :set splitright<CR>:vsplit<CR>
nnoremap <silent> <Space>1 :1wincmd w<CR>
nnoremap <silent> <Space>2 :2wincmd w<CR>
nnoremap <silent> <Space>3 :3wincmd w<CR>
nnoremap <silent> <Space>4 :4wincmd w<CR>
nnoremap <silent> <Space>5 :5wincmd w<CR>
nnoremap <silent> <Space>6 :6wincmd w<CR>
nnoremap <silent> <Space>7 :7wincmd w<CR>
nnoremap <silent> <Space>8 :8wincmd w<CR>
nnoremap <silent> <Space>9 :9wincmd w<CR>
nnoremap sn <C-w>h
nnoremap se <C-w>j
nnoremap su <C-w>k
nnoremap si <C-w>l
nnoremap <silent> <Up> :res +5<CR>
nnoremap <silent> <Down> :res -5<CR>
nnoremap <silent> <Right> :vertical res +5<CR>
nnoremap <silent> <Left> :vertical res -5<CR>
nnoremap sh <C-w>t<C-w>K
nnoremap sv <C-w>t<C-w>H
nnoremap srh <C-w>b<C-w>K
nnoremap srv <C-w>b<C-w>H
nnoremap sf <C-w>w
nnoremap sc <C-w>o
nnoremap sq <C-w>j:q<CR>

" Tab
nnoremap <silent> ss :tabe<CR>
nmap <Leader>1 <Plug>AirlineSelectTab1
nmap <Leader>2 <Plug>AirlineSelectTab2
nmap <Leader>3 <Plug>AirlineSelectTab3
nmap <Leader>4 <Plug>AirlineSelectTab4
nmap <Leader>5 <Plug>AirlineSelectTab5
nmap <Leader>6 <Plug>AirlineSelectTab6
nmap <Leader>7 <Plug>AirlineSelectTab7
nmap <Leader>8 <Plug>AirlineSelectTab8
nmap <Leader>9 <Plug>AirlineSelectTab9
nmap <Leader>0 <Plug>AirlineSelectTab0
nmap sl <Plug>AirlineSelectPrevTab
nmap sy <Plug>AirlineSelectNextTab
nnoremap <silent> sml :-tabmove<CR>
nnoremap <silent> smy :+tabmove<CR>

noremap <Space>rr :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'markdown'
		exec "MarkdownPreview"
	elseif &filetype == 'dart'
		silent! exec "CocCommand flutter.run"
	endif
endfunc

" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'theniceboy/nvim-deus'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'p00f/nvim-ts-rainbow'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'honza/vim-snippets'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'liuchengxu/vista.vim'
Plug 'mbbill/undotree'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
Plug 'kdheepak/lazygit.nvim'
Plug 'kevinhwang91/rnvimr'
Plug 'preservim/nerdcommenter'
Plug 'mg979/vim-visual-multi'
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
Plug 'voldikss/vim-floaterm'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-after-object'
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'matze/vim-move'
Plug 'rhysd/clever-f.vim'

call plug#end()

" ===
" === gruvbox
" ===
"color gruvbox

" ===
" === nvim-deus
" ===
color deus

" ===
" === onedark.vim
" ===
"color onedark

" ===
" === vim-airline
" ===
let g:airline_theme = 'onedark'
let g:airline_section_c = '%{getcwd()} %{airline#util#wrap(airline#extensions#coc#get_status(),0)}'
let g:airline_section_x = ''
let g:airline_section_z = '%l/%L'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type= 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_idx_format = {
	\ '0': '0 ',
	\ '1': '1 ',
	\ '2': '2 ',
	\ '3': '3 ',
	\ '4': '4 ',
	\ '5': '5 ',
	\ '6': '6 ',
	\ '7': '7 ',
	\ '8': '8 ',
	\ '9': '9 '
	\}

function! WindowNumber(...)
	let builder = a:1
	let context = a:2
	call builder.add_section('airline_b', ' %{tabpagewinnr(tabpagenr())} ')
	return 0
endfunction

call airline#add_statusline_func('WindowNumber')
call airline#add_inactive_statusline_func('WindowNumber')

" ===
" === nvim-treesitter
" ===
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"c", "cpp", "python", "dart", "go", "bash", "lua", "json"},
  highlight = {
    enable = true,
  },
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	}
}
EOF

" ===
" === coc.nvim
" ===
let g:coc_data_home = '~/.config/nvim/coc/'
let g:coc_global_extensions = [
	\ 'coc-explorer',
	\ 'coc-floaterm',
	\ 'coc-flutter-tools',
	\ 'coc-git',
  \ 'coc-go',
	\ 'coc-json',
	\ 'coc-lists',
	\ 'coc-python',
	\ 'coc-pyright',
  \ 'coc-snippets',
	\ 'coc-tasks',
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

nmap mf <Plug>(coc-fix-current)
xmap mas <Plug>(coc-codeaction-selected)
nmap mas <Plug>(coc-codeaction-selected)w

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

" === coc-snippets
let g:coc_snippet_next = '<F1>'
let g:coc_snippet_prev = '<C-n>'
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
nnoremap <silent> <C-f> :CocList files<CR>
nnoremap <silent> <C-p> :CocList grep<CR>
nnoremap <silent> <C-w> :<C-u>CocList --normal buffers<CR>
nnoremap <silent> <C-s> :CocList lines<CR>
nnoremap <silent> <Space>sc :CocList vimcommands<CR>
nnoremap <silent> <Space>sa :<C-u>CocList --normal tasks<CR>
nnoremap <silent> <Space>st :<C-u>CocList --normal floaterm<CR>

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
nnoremap <silent> gu :CocCommand git.chunkUndo<CR>
nnoremap <silent> gs :CocCommand git.chunkStage<CR>

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
noremap gpu :AsyncRun -mode=term -pos=floaterm git push -u origin master<CR>
noremap gpf :AsyncRun -mode=term -pos=floaterm git push -f origin master<CR>

" ===
" === vista.vim
" ===
nnoremap <silent> <Space>v :Vista!!<CR>
"nnoremap <silent> <C-t> :silent! Vista finder coc<CR>
let g:vista_default_executive = 'coc'
"let g:vista_fzf_preview = ['right:50%']
let g:vista_sidebar_open_cmd = 'set splitright|30vsplit'
let g:vista_echo_cursor = 0
let g:vista_update_on_text_changed = 1
let g:vista_stay_on_open = 0
let g:vista_blink = [0, 0]
let g:vista_top_level_blink = [0, 0]

" ===
" === undotree
" ===
nnoremap <silent> L :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24
function g:Undotree_CustomMap()
	nmap <buffer> u <plug>UndotreeNextState
	nmap <buffer> e <plug>UndotreePreviousState
	nmap <buffer> U 5<plug>UndotreeNextState
	nmap <buffer> E 5<plug>UndotreePreviousState
endfunc

" ===
" === fzf.vim
" ===
"nnoremap <C-f> :Files<CR>
"nnoremap <C-p> :Rg<CR>
"nnoremap <C-w> :Buffers<CR>
"nnoremap <C-s> :BLines<CR>
"nnoremap <C-c> :Commands<CR>
"command! -bang -nargs=* Rg call fzf#vim#grep('rg --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1, fzf#vim#with_preview(), <bang>0)

" ===
" === lazygit.nvim
" ===
nnoremap <silent> <C-g> :LazyGit<CR>
let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 1.0 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_use_neovim_remote = 1 " for neovim-remote support

" ===
" === rnvimr
" ===
let g:rnvimr_ex_enable = 1
let g:rnvimr_pick_enable = 1
let g:rnvimr_draw_border = 0
highlight link RnvimrNormal CursorLine
nnoremap <silent> R :RnvimrToggle<CR><C-\><C-n>:RnvimrResize 0<CR>
let g:rnvimr_action = {
            \ '<C-t>': 'NvimEdit tabedit',
            \ '<C-x>': 'NvimEdit split',
            \ '<C-v>': 'NvimEdit vsplit',
            \ 'gw': 'JumpNvimCwd',
            \ }
let g:rnvimr_layout = { 'relative': 'editor',
            \ 'width': &columns,
            \ 'height': &lines,
            \ 'col': 0,
            \ 'row': 0,
            \ 'style': 'minimal' }
let g:rnvimr_presets = [{'width': 1.0, 'height': 1.0}]

" ===
" === nerdcommenter
" ===
map mc <Plug>NERDCommenterToggle

" ===
" === vim-visual-multi
" ===
let g:VM_leader = {'default': ',', 'visual': ',', 'buffer': ','}
let g:VM_maps = {}
let g:VM_custom_motions = {'n': 'h', 'i': 'l', 'u': 'k', 'e': 'j', 'N': '0', 'I': '$', 'h': 'e'}
let g:VM_maps['i'] = 'k'
let g:VM_maps['I'] = 'K'
let g:VM_maps['Find Under'] = '<C-k>'
let g:VM_maps['Find Subword Under'] = '<C-k>'
let g:VM_maps["Select Cursor Down"] = 'E'
let g:VM_maps["Select Cursor Up"] = 'U'
let g:VM_maps['Find Next'] = ''
let g:VM_maps['Find Prev'] = ''
let g:VM_maps["Undo"] = 'l'

" ===
" === vim-hexokinase
" ===
let g:Hexokinase_highlighters = ['foregroundfull']

" ===
" === vim-table-mode
" ===
nnoremap <Leader>tm :TableModeToggle<CR>
let g:table_mode_cell_text_object_i_map = 'k<Bar>'

" ===
" === auto-pairs
" ===
let g:AutoPairsShortcutToggle = ''
let g:AutoPairsShortcutJump = ''
let g:AutoPairsShortcutFastWrap = '<M-w>'
let g:AutoPairsMapCh = 0
let g:AutoPairsFlyMode = 1

" ===
" === vim-after-object
" ===
autocmd VimEnter * call after_object#enable('=', ':', '-', '#', ' ')

" ===
" === indentLine
" ===
let g:indentLine_char = '|'

" ===
" === vim-move
" ===
vmap <M-e> <Plug>MoveBlockDown
vmap <M-u> <Plug>MoveBlockUp
vmap <M-n> <Plug>MoveBlockLeft
vmap <M-i> <Plug>MoveBlockRight
nmap <M-e> <Plug>MoveLineDown
nmap <M-u> <Plug>MoveLineUp
nmap <M-n> <Plug>MoveCharLeft
nmap <M-i> <Plug>MoveCharRight

" ===
" === vim-floaterm
" ===
let g:floaterm_width = 1.0
let g:floaterm_height = 1.0
let g:floaterm_keymap_new = '<M-o>'
let g:floaterm_keymap_prev = '<M-l>'
let g:floaterm_keymap_next = '<M-y>'
let g:floaterm_keymap_toggle = '<M-t>'
let g:floaterm_keymap_kill = '<M-c>'
nnoremap <silent> stn :FloatermNew --wintype=vsplit --position=left --width=0.5<CR>
nnoremap <silent> ste :FloatermNew --wintype=split --position=bottom --height=0.5<CR>
nnoremap <silent> stu :FloatermNew --wintype=split --position=top --height=0.5<CR>
nnoremap <silent> sti :FloatermNew --wintype=vsplit --position=right --width=0.5<CR>
tnoremap <M-x> <C-\><C-n>
tnoremap <M-n> <C-\><C-n><C-w>h
tnoremap <M-e> <C-\><C-n><C-w>j
tnoremap <M-u> <C-\><C-n><C-w>k
tnoremap <M-i> <C-\><C-n><C-w>l

source ~/.config/nvim/config/md-snippets.vim

let g:terminal_color_0 = '#000000'
let g:terminal_color_1 = '#FF5555'
let g:terminal_color_2 = '#50FA7B'
let g:terminal_color_3 = '#F1FA8C'
let g:terminal_color_4 = '#BD93F9'
let g:terminal_color_5 = '#FF79C6'
let g:terminal_color_6 = '#8BE9FD'
let g:terminal_color_7 = '#BFBFBF'
let g:terminal_color_8 = '#4D4D4D'
let g:terminal_color_9 = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'
