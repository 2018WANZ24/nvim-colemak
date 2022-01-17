if empty(glob($HOME.'/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

set encoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set clipboard+=unnamedplus
set autochdir
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
set updatetime=100
set termguicolors

silent !mkdir -p $HOME/.config/nvim/tmp/backup
silent !mkdir -p $HOME/.config/nvim/tmp/undo
set backupdir=$HOME/.config/nvim/tmp/backup,.
set directory=$HOME/.config/nvim/tmp/backup,.
set undofile
set undodir=$HOME/.config/nvim/tmp/undo,.

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

noremap! <C-e> <Down>
noremap! <C-u> <Up>
noremap! <C-t> <Left>
noremap! <C-n> <Right>
noremap! <C-a> <Home>
noremap! <C-o> <End>

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

noremap E <C-f>
noremap U <C-b>
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
nnoremap <silent> <Space><CR> :nohlsearch<CR>
nnoremap <silent> q :q<CR>
nnoremap S :w<CR>
nnoremap <M-s> :source $HOME/.config/nvim/init.vim<CR>

" Window
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

" Tab
nnoremap <silent> tu :tabe<CR>
nnoremap <silent> <Leader>1 <Plug>AirlineSelectTab1
nnoremap <silent> <Leader>2 <Plug>AirlineSelectTab2
nnoremap <silent> <Leader>3 <Plug>AirlineSelectTab3
nnoremap <silent> <Leader>4 <Plug>AirlineSelectTab4
nnoremap <silent> <Leader>5 <Plug>AirlineSelectTab5
nnoremap <silent> <Leader>6 <Plug>AirlineSelectTab6
nnoremap <silent> <Leader>7 <Plug>AirlineSelectTab7
nnoremap <silent> <Leader>8 <Plug>AirlineSelectTab8
nnoremap <silent> <Leader>9 <Plug>AirlineSelectTab9
nnoremap <silent> <Leader>0 <Plug>AirlineSelectTab0
nnoremap <silent> tn <Plug>AirlineSelectPrevTab
nnoremap <silent> ti <Plug>AirlineSelectNextTab
nnoremap <silent> tmn :-tabmove<CR>
nnoremap <silent> tmi :+tabmove<CR>

" Terminal
nnoremap <silent> stn :set nosplitright<CR>:vsplit<CR>:term<CR>i
nnoremap <silent> ste :set splitbelow<CR>:split<CR>:term<CR>i
nnoremap <silent> stu :set nosplitbelow<CR>:split<CR>:term<CR>i
nnoremap <silent> sti :set splitright<CR>:vsplit<CR>:term<CR>i
nnoremap <silent> stt :tabe<CR>:term<CR>i
tnoremap <M-s> <C-\><C-n>
tnoremap <M-n> <C-\><C-n><C-w>h
tnoremap <M-e> <C-\><C-n><C-w>j
tnoremap <M-u> <C-\><C-n><C-w>k
tnoremap <M-i> <C-\><C-n><C-w>l

noremap <Space>r :call CompileRunGcc()<CR>
func! CompileRunGcc()
  exec "w"
  if &filetype == 'c'
    set splitright
    exec "!gcc % -o %<"
    :vsp
    :term ./%<
  elseif &filetype == 'cpp'
    set splitright
    exec "!g++ -std=c++11 % -Wall -o %<"
    :vsp
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
    exec "MarkdownPreview"
  elseif &filetype == 'tex'
    silent! exec "VimtexStop"
    silent! exec "VimtexCompile"
  elseif &filetype == 'dart'
    silent! exec "CocCommand flutter.run"
  elseif &filetype == 'javascript'
    set splitbelow
    :sp
    :term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
  elseif &filetype == 'go'
    set splitbelow
    :sp
    :term go run .
  endif
endfunc

" Plugins
call plug#begin('~/.config/nvim/plugged')
" === Language servers
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'dart-lang/dart-vim-plugin'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

" Other plugins
Plug 'morhetz/gruvbox'
Plug 'theniceboy/nvim-deus'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'liuchengxu/vista.vim'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'kdheepak/lazygit.nvim'
Plug 'kevinhwang91/rnvimr'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'RRethy/vim-illuminate'
Plug 'dhruvasagar/vim-table-mode'
Plug 'luochen1990/rainbow'
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi'
Plug 'Yggdroot/indentLine'
call plug#end()

" ===
" === gruvbox
" ===
"color gruvbox

" ===
" === nvim-deus
" ===
color deus

source ~/.config/nvim/config/plugins/coc.vim
source ~/.config/nvim/config/plugins/vim-airline.vim
source ~/.config/nvim/config/plugins/vim-gitgutter.vim
source ~/.config/nvim/config/plugins/vista.vim
source ~/.config/nvim/config/plugins/undotree.vim
source ~/.config/nvim/config/plugins/fzf.vim
source ~/.config/nvim/config/plugins/lazygit.vim
source ~/.config/nvim/config/plugins/rnvimr.vim
source ~/.config/nvim/config/plugins/nerdcommenter.vim
source ~/.config/nvim/config/plugins/vim-illuminate.vim
source ~/.config/nvim/config/plugins/vim-table-mode.vim
source ~/.config/nvim/config/plugins/rainbow.vim
source ~/.config/nvim/config/plugins/vim-visual-multi.vim
source ~/.config/nvim/config/plugins/indentLine.vim
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
