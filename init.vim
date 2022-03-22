if empty(glob($HOME.'/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

let &t_ut=''
set clipboard+=unnamedplus
set encoding=utf-8
set fileencodings=utf-8
set termencoding=utf-8
set exrc
set secure
set number
set relativenumber
set cursorline
set hidden
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set list
set listchars=tab:\|\ ,trail:▫
set scrolloff=4
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
set wrap
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=40
set foldenable
set formatoptions-=tc
set splitright
set splitbelow
set noshowmode
set showcmd
set wildmenu
set ignorecase
set smartcase
set shortmess+=c
set inccommand=split
set completeopt=longest,noinsert,menuone,noselect,preview
set ttyfast "should make scrolling faster
set lazyredraw "same as above

silent !mkdir -p $HOME/.config/nvim/tmp/backup
silent !mkdir -p $HOME/.config/nvim/tmp/undo
set backupdir=$HOME/.config/nvim/tmp/backup,.
set directory=$HOME/.config/nvim/tmp/backup,.
set undofile
set undodir=$HOME/.config/nvim/tmp/undo,.

set colorcolumn=120
set updatetime=100
set virtualedit=block
set noswapfile
set history=50
set updatetime=100
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
hi NonText ctermfg=gray guifg=grey10

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

noremap n h
noremap e j
noremap u k
noremap i l
noremap l u
noremap k i
noremap K I
noremap h e
" noremap H E
noremap - N
noremap = n

noremap! <A-n> <Left>
noremap! <A-e> <Down>
noremap! <A-u> <Up>
noremap! <A-i> <Right>
noremap! <A-h> <Home>
noremap! <A-o> <End>

noremap <A-u> <C-b>
noremap <A-e> <C-f>
noremap N ^
nnoremap I $
vnoremap I $h
noremap W 5w
noremap B 5b
nnoremap > >>
nnoremap < <<
noremap ` ~
noremap ; :
noremap j %
nnoremap vv ^v$h

nnoremap <silent> q :q<CR>
nnoremap Q q
nnoremap S :w<CR>
nnoremap <C-s> :%s//g<Left><Left>
vnoremap <C-s> :s//g<Left><Left>
nnoremap <A-c> :cd<Space>
noremap <Leader>ad /\(\<\w\+\>\)\_s*\1
noremap <Leader>as :set spell!<CR>
inoremap <buffer> <C-r> <++>
inoremap <buffer> <C-f> <Esc>/<++><CR>:nohlsearch<CR>c4l


" ===
" === Window Management
" ===
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
nnoremap <silent> sq <C-w>w:q<CR>

" ===
" === Tab Management
" ===
nnoremap <silent> ss :tabe<CR>
nnoremap <silent> sS :tab split<CR>
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

" ===
" === Markdown
" ===
autocmd BufRead,BufNewFile *.md setlocal spell
source ~/.config/nvim/config/md-snippets.vim

" ===
" === Run
" ===
nnoremap <Space>rr :call CompileRunGcc()<CR>
func! CompileRunGcc()
  exec "w"
  if &filetype == 'c'
    set splitbelow
    :sp
    :res -5
    term gcc -ansi -Wall % -o %< && time ./%<
  elseif &filetype == 'cpp'
    set splitbelow
    exec "!g++ -std=c++11 % -Wall -o %<"
    :sp
    :res -15
    :term ./%<
  elseif &filetype == 'cs'
    set splitbelow
    silent! exec "!mcs %"
    :sp
    :res -5
    :term mono %<.exe
  elseif &filetype == 'java'
    set splitbelow
    :sp
    :res -5
    term javac % && time java %<
  elseif &filetype == 'sh'
    :!time bash %
  elseif &filetype == 'python'
    set splitbelow
    :sp
    :term python3 %
  elseif &filetype == 'html'
    silent! exec "!".g:mkdp_browser." % &"
  elseif &filetype == 'markdown'
    exec "InstantMarkdownPreview"
  elseif &filetype == 'tex'
    silent! exec "VimtexStop"
    silent! exec "VimtexCompile"
  elseif &filetype == 'dart'
    exec "CocCommand flutter.run"
    silent! exec "CocCommand flutter.dev.openDevLog"
  elseif &filetype == 'javascript'
    set splitbelow
    :sp
    :term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings %
  elseif &filetype == 'go'
    set splitbelow
    :sp
    :term go run .
  endif
endfunc

source ~/.config/nvim/config/cursor.vim

" ===
" === Plugins
" ===
call plug#begin('~/.config/nvim/plugged')

Plug 'dracula/vim'
Plug 'morhetz/gruvbox'
Plug '2018WANZ24/nvim-deus'
Plug 'joshdick/onedark.vim'
Plug 'EdenEast/nightfox.nvim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'sainnhe/everforest'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'p00f/nvim-ts-rainbow'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dart-lang/dart-vim-plugin'
Plug 'skywind3000/asynctasks.vim'
Plug 'skywind3000/asyncrun.vim'
Plug 'honza/vim-snippets'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
Plug 'liuchengxu/vista.vim'
Plug 'mbbill/undotree'
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'
Plug 'kdheepak/lazygit.nvim'
Plug 'kevinhwang91/rnvimr'
Plug 'tomtom/tcomment_vim'
Plug 'mg979/vim-visual-multi'
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['text', 'markdown', 'vim-plug'] }
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-after-object'
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'rhysd/clever-f.vim'
Plug 'voldikss/vim-floaterm'
Plug 'godlygeek/tabular'
Plug 'othree/html5.vim'
Plug 'puremourning/vimspector'

call plug#end()

" let g:tokyonight_style = "day"

" let g:gruvbox_contrast_light = "hard"
" let g:gruvbox_contrast_light = "soft"
" set background = "light"
" let g:gruvbox_contrast_dark = "hard"
" let g:gruvbox_contrast_dark = "soft"

" color dracula
" color nightfox
" ===
" === gruvbox
" ===
color gruvbox

" ===
" === nvim-deus
" ===
" color deus

" ===
" === onedark.vim
" ===
" color onedark

" ===
" === vim-airline
" ===
" let g:airline_theme = 'deus'
let g:airline_theme = 'gruvbox'
let g:airline_section_c = '%{getcwd()} %{airline#util#wrap(airline#extensions#coc#get_status(),0)}'
let g:airline_section_x = ''
let g:airline_section_z = '%l/%L:%c'
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
  ensure_installed = {"c", "cpp", "python", "dart", "go", "bash", "lua", "json", "javascript", "markdown"},
  highlight = {
    enable = true,
    disable = { "html" },
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
  \ 'coc-pyright',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-tsserver',
  \ 'coc-snippets',
  \ 'coc-tasks',
  \ 'coc-translator',
  \ 'coc-vimlsp',
  \ 'coc-yaml',
  \ 'coc-yank']

inoremap <silent><expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
inoremap <silent><expr> <A-r> coc#refresh()

nmap <silent> g[ <Plug>(coc-diagnostic-prev)
nmap <silent> g] <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD :tab sp<CR><Plug>(coc-definition)
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

nnoremap <silent><nowait><expr> <A-]> coc#float#has_scroll() ? coc#float#scroll(1) : "\<A-]>"
nnoremap <silent><nowait><expr> <A-[> coc#float#has_scroll() ? coc#float#scroll(0) : "\<A-[>"
inoremap <silent><nowait><expr> <A-]> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<A-]>"
inoremap <silent><nowait><expr> <A-[> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<A-[>"
vnoremap <silent><nowait><expr> <A-]> coc#float#has_scroll() ? coc#float#scroll(1) : "\<A-]>"
vnoremap <silent><nowait><expr> <A-[> coc#float#has_scroll() ? coc#float#scroll(0) : "\<A-[>"

" === coc-snippets
let g:coc_snippet_prev = '<A-n>'
let g:coc_snippet_next = '<A-i>'
let g:snips_author = '2018WANZ24'

" === coc-flutter-tools
nnoremap <silent> <Space>ol :CocCommand flutter.toggleOutline<CR>

" === coc-explorer
nnoremap <silent> <Space>t :CocCommand explorer<CR>

" === coc-yank
nnoremap <silent> <Space>y :CocList -A --normal yank<CR>

" === coc-translator
nmap <C-t> <Plug>(coc-translator-p)

" === coc-lists
nnoremap <silent> <Space>f :CocList files<CR>
nnoremap <silent> <Space>p :CocList grep<CR>
nnoremap <silent> <Space>w :CocList --normal buffers<CR>
nnoremap <silent> <Space>s :CocList -I --ignore-case lines<CR>
nnoremap <silent> <Space>oc :CocList vimcommands<CR>
nnoremap <silent> <Space>oa :CocList --normal tasks<CR>
nnoremap <silent> <Space>ot :CocList --normal floaterm<CR>
nnoremap <silent> <Space>od :CocList --normal diagnostics<CR>

" === coc-git
nmap g- <Plug>(coc-git-prevchunk)
nmap g= <Plug>(coc-git-nextchunk)
nmap gF <Plug>(coc-git-prevconflict)
nmap gf <Plug>(coc-git-nextconflict)
nmap gh <Plug>(coc-git-chunkinfo)
omap kg <Plug>(coc-git-chunk-inner)
xmap kg <Plug>(coc-git-chunk-inner)
omap ag <Plug>(coc-git-chunk-outer)
xmap ag <Plug>(coc-git-chunk-outer)
nnoremap <silent> gl :CocCommand git.chunkUndo<CR>
nnoremap <silent> gs :CocCommand git.chunkStage<CR>
nnoremap <silent> zg :CocCommand git.foldUnchanged<CR>
nnoremap <silent> gp :CocCommand git.push<CR>

" ===
" === dart-vim-plugin
" ===
let g:dart_style_guide = 2
let g:dart_format_on_save = 1
let g:dartfmt_options = ["-l 100"]

" ===
" === asynctasks.vim
" ===
let g:asyncrun_open = 6
let g:asyncrun_rootmarks = ['.git', '.svn', '.root', '.project', '.hg']
let g:asynctasks_term_rows = 10
let g:asynctasks_term_cols = 80
noremap <silent> <Space>rf :AsyncTask file-run<CR>
noremap <silent> <Space>rbf :AsyncTask file-build<CR>
noremap <silent> <Space>rp :AsyncTask project-run<CR>
noremap <silent> <Space>rbp :AsyncTask project-build<CR>

" ===
" === vim-instant-markdown
" ===
let g:instant_markdown_slow = 0
let g:instant_markdown_autostart = 0
let g:instant_markdown_autoscroll = 1

" ===
" === vista.vim
" ===
nnoremap <silent> <Space>v :Vista!!<CR>
" nnoremap <silent> <Space>m :silent! Vista finder coc<CR>
let g:vista_default_executive = 'coc'
" let g:vista_fzf_preview = ['right:50%']
let g:vista_sidebar_open_cmd = 'set splitright|30vsplit'
let g:vista_echo_cursor = 0
let g:vista_update_on_text_changed = 1
let g:vista_stay_on_open = 0
let g:vista_blink = [0, 0]
let g:vista_top_level_blink = [0, 0]

" ===
" === undotree
" ===
nnoremap <silent> <Space>L :UndotreeToggle<CR>
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
" nnoremap <Space>f :Files<CR>
" nnoremap <Space>p :Rg<CR>
" nnoremap <Space>w :Buffers<CR>
" nnoremap <Space>s :BLines<CR>
" nnoremap <Space>oc :Commands<CR>
" command! -bang -nargs=* Rg call fzf#vim#grep('rg --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1, fzf#vim#with_preview(), <bang>0)

" ===
" === lazygit.nvim
" ===
nnoremap <silent> go :LazyGit<CR>
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
            \ '<A-t>': 'NvimEdit tabedit',
            \ '<A-s>': 'NvimEdit split',
            \ '<A-v>': 'NvimEdit vsplit',
            \ 'gw': 'JumpNvimCwd',
            \ 'yw': 'EmitRangerCwd'
            \ }
let g:rnvimr_layout = { 'relative': 'editor',
            \ 'width': &columns,
            \ 'height': &lines,
            \ 'col': 0,
            \ 'row': 0,
            \ 'style': 'minimal' }
let g:rnvimr_presets = [{'width': 1.0, 'height': 1.0}]

" ===
" === tcomment_vim
" ===
let g:tcomment_textobject_inlinecomment = ''
noremap <silent> mc :TComment<CR>
let g:tcomment_opleader1 = 'mv'

" ===
" === vim-visual-multi
" ===
let g:VM_leader                     = {'default': ',', 'visual': ',', 'buffer': ','}
let g:VM_maps                       = {}
let g:VM_custom_motions             = {'n': 'h', 'i': 'l', 'u': 'k', 'e': 'j', 'N': '0', 'I': '$', 'h': 'e'}
let g:VM_maps['i']                  = 'k'
let g:VM_maps['I']                  = 'K'
let g:VM_maps['Find Under']         = '<A-k>'
let g:VM_maps['Find Subword Under'] = '<A-k>'
let g:VM_maps["Select Cursor Down"] = 'E'
let g:VM_maps["Select Cursor Up"]   = 'U'
let g:VM_maps['Find Next']          = ''
let g:VM_maps['Find Prev']          = ''
let g:VM_maps["Undo"]               = 'l'

" ===
" === vim-hexokinase
" ===
let g:Hexokinase_highlighters = ['foregroundfull']

" ===
" === vim-table-mode
" ===
let g:table_mode_cell_text_object_i_map = 'k<Bar>'

" ===
" === auto-pairs
" ===
let g:AutoPairsShortcutToggle = ''
let g:AutoPairsShortcutJump = ''
let g:AutoPairsShortcutFastWrap = '<C-w>'
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
" === vim-floaterm
" ===
let g:floaterm_width = 1.0
let g:floaterm_height = 1.0
let g:floaterm_keymap_new = '<C-u>'
let g:floaterm_keymap_toggle = '<C-e>'
let g:floaterm_keymap_prev = '<C-l>'
let g:floaterm_keymap_next = '<C-y>'
let g:floaterm_keymap_kill = '<C-q>'
nnoremap <silent> stn :FloatermNew --wintype=vsplit --position=left --width=0.5<CR>
nnoremap <silent> ste :FloatermNew --wintype=split --position=bottom --height=0.5<CR>
nnoremap <silent> stu :FloatermNew --wintype=split --position=top --height=0.5<CR>
nnoremap <silent> sti :FloatermNew --wintype=vsplit --position=right --width=0.5<CR>
tnoremap <C-n> <C-\><C-n>
tnoremap <C-o> <C-\><C-n><C-w>w

" ===
" === tabular
" ===
vnoremap <Leader>t :Tabularize /

" ===
" === Terminal Colors
" ===
let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:terminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'

nnoremap <silent> <Esc> :nohlsearch<CR>
