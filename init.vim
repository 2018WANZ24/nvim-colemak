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
set noexpandtab
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
noremap 1 %
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

source ~/.config/nvim/config/plugins/vim-airline.vim
source ~/.config/nvim/config/plugins/nvim-treesitter.vim
source ~/.config/nvim/config/plugins/coc.vim
source ~/.config/nvim/config/plugins/asynctasks.vim
source ~/.config/nvim/config/plugins/vista.vim
source ~/.config/nvim/config/plugins/undotree.vim
"source ~/.config/nvim/config/plugins/fzf.vim
source ~/.config/nvim/config/plugins/lazygit.vim
source ~/.config/nvim/config/plugins/rnvimr.vim
source ~/.config/nvim/config/plugins/nerdcommenter.vim
source ~/.config/nvim/config/plugins/vim-visual-multi.vim
source ~/.config/nvim/config/plugins/vim-hexokinase.vim
source ~/.config/nvim/config/plugins/vim-table-mode.vim
source ~/.config/nvim/config/plugins/auto-pairs.vim
source ~/.config/nvim/config/plugins/vim-after-object.vim
source ~/.config/nvim/config/plugins/indentLine.vim
source ~/.config/nvim/config/plugins/vim-move.vim
source ~/.config/nvim/config/md-snippets.vim

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

" ===
" === vim-floaterm
" ===
let g:floaterm_width = 1.0
let g:floaterm_height = 1.0
let g:floaterm_keymap_new = '<C-t><C-o>'
let g:floaterm_keymap_prev = '<C-t><C-l>'
let g:floaterm_keymap_next = '<C-t><C-y>'
let g:floaterm_keymap_toggle = '<C-t><C-t>'
let g:floaterm_keymap_kill = '<C-q>'
nnoremap <silent> <C-t><C-n> :FloatermNew --wintype=vsplit --position=left --width=0.5<CR>
nnoremap <silent> <C-t><C-e> :FloatermNew --wintype=split --position=bottom --height=0.5<CR>
nnoremap <silent> <C-t><C-u> :FloatermNew --wintype=split --position=top --height=0.5<CR>
nnoremap <silent> <C-t><C-i> :FloatermNew --wintype=vsplit --position=right --width=0.5<CR>
tnoremap <C-t><C-s> <C-\><C-n>
