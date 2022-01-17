# nvim
My neovim config for **colemak** users
<center><img src="https://raw.githubusercontent.com/2018WANZ24/nvimrc/master/demo.png"></center>

## Installation
* Backup your nvimrc:
```
cd ~/.config
mv nvim nvim_back
```
* Install [npm](https://github.com/npm/cli)
* Install [yarn](https://classic.yarnpkg.com/en/docs/install)
* Install [fzf](https://github.com/junegunn/fzf)
* Install [ripgrep](https://github.com/BurntSushi/ripgrep)
* Install [ranger](https://github.com/ranger/ranger/)
* Install [lazygit](https://github.com/jesseduffield/lazygit)

* Clone this repository:
```
git clone https://github.com/2018WANZ24/nvim-colemak.git ~/.config/nvim/
```
* [vim-plug](https://github.com/junegunn/vim-plug) (plugin manager) will automatically install to `~/.config/nvim/autoload`
* In nvim, run `:PlugInstall`

## Keyboard Shortcuts
### 1 Basic Editor Features
#### 1.1 Basic Remappings
| Shortcut      | Action                                                  |
|---------------|---------------------------------------------------------|
| n             | Cursor left                                             |
| e             | Cursor down                                             |
| u             | Cursor up                                               |
| i             | Cursor right                                            |
| l             | Undo                                                    |
| k             | Insert mode                                             |
| K             | Insert before the first non-blank character of the line |
| h             | Go to end of the word                                   |
| -             | Search previous                                         |
| =             | Search next                                             |
| E             | Next page                                               |
| U             | Previous page                                           |
| N             | Cursor to the first non-blank character of the line     |
| I             | Cursor to the end of the line                           |
| W             | 5w                                                      |
| B             | 5b                                                      |
| >             | Indent                                                  |
| <             | Un-indent                                               |
| \`            | Toggle case                                             |
| ;             | Command mode                                            |
| dy            | Delete find pair                                        |
| vv            | Select non-blank characters of the line except `\n`     |
| \<Space>\<CR> | No highlight search                                     |
| q             | Quit                                                    |
| S             | Save                                                    |
| \<M-s>        | Source nvim configuration file                          |

* Cursor down: `'` + `a/r/s/t/d/h/n/e/i/o` (as 1/2/3/4/5/6/7/8/9/0)
* Cursor up: `[` + `a/r/s/t/d/h/n/e/i/o` (as 1/2/3/4/5/6/7/8/9/0)

#### 1.2 Window Management
| Shortcut          | Action                                        |
|-------------------|-----------------------------------------------|
| sN                | Split left                                    |
| sE                | Split below                                   |
| sU                | Split above                                   |
| sI                | Split right                                   |
| \<Space> + number | Go to window by number                        |
| sn                | Go one window left                            |
| se                | Go one window below                           |
| su                | Go one window above                           |
| si                | Go one window right                           |
| \<Up>             | (Horizontal) Window size +5 lines             |
| \<Down>           | (Horizontal) Window size -5 lines             |
| \<Right>          | (Vertical) Window size +5 lines               |
| \<Left>           | (Vertical) Window size -5 lines               |
| sh                | Set the two splits to be horizontal           |
| sv                | Set the two splits to be vertical             |
| srh               | Rotate splits and arrange splits horizontally |
| srv               | Rotate splits and arrange splits vertically   |
| sf                | Go to next window                             |
| sc                | Close other windows                           |

#### 1.3 Tab Management
| Shortcut           | Action                |
|--------------------|-----------------------|
| tu                 | New tab               |
| \<Leader> + number | Go to tab by number     |
| tn                 | Go to previous tab    |
| ti                 | Go to next tab        |
| tmn                | Move tab to the left  |
| tmi                | Move tab to the right |

#### 1.4 Terminal
In Normal mode:
| Shortcut | Action                     |
|----------|----------------------------|
| stn      | Open terminal on the left  |
| ste      | Open terminal below        |
| stu      | Open terminal above        |
| sti      | Open terminal on the right |
| stt      | Open terminal in a new tab |

In terminal mode:
| Shortcut | Action              |
|----------|---------------------|
| \<M-s>   | Normal mode         |
| \<M-n>   | Go one window left  |
| \<M-e>   | Go one window below |
| \<M-u>   | Go one window above |
| \<M-i>   | Go one window right |
| \<M-t>   | Go to previous tab  |


#### 1.5 Others
| Shortcut  | Action |
|-----------|--------|
| \<Space>r | Run    |

### 2 Plugins
The plugin manager is [vim-plug](https://github.com/junegunn/vim-plug).

#### 2.1 Language Servers
* [coc.nvim](https://github.com/neoclide/coc.nvim) for AutoCompletion

| Shortcut             | Action                                                                           |
|----------------------|----------------------------------------------------------------------------------|
| \<C-e>/<Tab>         | Next completion                                                                  |
| \<C-u>/Shift + <Tab> | Previous completion                                                              |
| \<CR>                | Complete                                                                         |
| \<Space>-            | Go to previous diagnostic                                                        |
| \<Space>=            | Go to next diagnostic                                                            |
| gd                   | Go to definition                                                                 |
| gy                   | Go to type definition                                                            |
| gi                   | Go to implementation                                                             |
| gr                   | Go to references                                                                 |
| \<Space>h            | Show documentation                                                               |
| mr                   | Rename                                                                           |
| maf                  | Format selected                                                                  |
| maw                  | Code actions                                                                     |
| \<operation>kf       | Operation for what is in a function                                              |
| \<operation>af       | Operation for the whole function                                                 |
| \<operation>kc       | Operation for what is in a class                                                 |
| \<operation>ac       | Operation for the whole class                                                    |
| \<C-]>/<C-[>         | Scroll a floating window                                                         |
| \<C-e>               | Jump to next snippets placeholder (on insert mode)                               |
| \<C-n>               | Jump to previous snippets placeholder (on insert mode)                           |
| tt                   | Toggle file explorer ([coc-explorer](https://github.com/weirongxu/coc-explorer)) |
| \<Space>y            | Show yank history ([coc-yank](https://github.com/neoclide/coc-yank))             |
| \<Space>ol           | Show flutter outline (**Only works in dart files**)                              |

* [vim-snippets](https://github.com/honza/vim-snippets) for snippets

* [dart-vim-plugin](https://github.com/dart-lang/dart-vim-plugin) for dart

* [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) for markdown

#### 2.2 Other Plugins

* [gruvbox](https://github.com/morhetz/gruvbox) and [nvim-deus](https://github.com/theniceboy/nvim-deus) colorthemes

* [vim-airline](https://github.com/vim-airline/vim-airline) for statusline and [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes) vim-airline colorthemes

* [vim-gitgutter](https://github.com/airblade/vim-gitgutter) (Show git status)

| Shortcut | Action               |
|----------|----------------------|
| gf       | Fold                 |
| H        | Preview current hunk |
| g-       | Go to next hunk      |
| g=       | Go to previous hunk  |

* [vista.vim](https://github.com/liuchengxu/vista.vim)

| Shortcut  | Action         |
|-----------|----------------|
| \<Space>v | Toggle taglist |
| \<C-t>    | Search tags    |

* [undotree](https://github.com/mbbill/undotree)

| Shortcut   | Action          |
|------------|-----------------|
| tt | Toggle undotree |

* [fzf](http://github.com/junegunn/fzf) and [fzf.vim](https://github.com/junegunn/fzf.vim)

| Shortcut | Action                                        |
|----------|-----------------------------------------------|
| \<C-p>   | Search files in current directory             |
| \<C-f>   | Search contents of files in current directory |
| \<C-w>   | Search buffers                                |
| \<C-l>   | Search contents of lines in current file      |
| \<C-c>   | Search commands                               |

* [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim)

| Shortcut | Action       |
|----------|--------------|
| \<C-g>   | Open lazygit |

* [rnvimr](https://github.com/kevinhwang91/rnvimr)

| Shortcut | Action                                                         |
|----------|----------------------------------------------------------------|
| R        | Open ranger                                                    |
| \<C-t>   | Open a new tab and edit current file in ranger                 |
| \<C-x>   | Open a new window horizontally and edit current file in ranger |
| \<C-v>   | Open a new window vertically and edit current file in ranger   |
| gw       | Change ranger's cwd to nvim's                                  |
| yw       | Change nvim's cwd to ranger's                                  |

* [nerdcommenter](https://github.com/preservim/nerdcommenter)

| Shortcut | Action                            |
|----------|-----------------------------------|
| mc       | Comment current line or selection |

* [vim-visual-multi](https://github.com/mg979/vim-visual-multi)

| Shortcut | Action                        |
|----------|-------------------------------|
| \<C-k>   | Find Under/Find Subword Under |
| q        | Remove Region                 |
| \<C-r>   | Skip Region                   |

* [vim-hexokinase](https://github.com/RRethy/vim-hexokinase)

* [vim-illuminate](https://github.com/RRethy/vim-illuminate)

* [vim-table-mode](https://github.com/dhruvasagar/vim-table-mode)

| Shortcut   | Action            |
|------------|-------------------|
| \<Space>tm | Toggle table mode |

* [auto-pairs](https://github.com/jiangmiao/auto-pairs)

* [rainbow](https://github.com/luochen1990/rainbow)

* [wildfire.vim](https://github.com/gcmt/wildfire.vim)

* [vim-surround](https://github.com/tpope/vim-surround)

* [indentLine](https://github.com/Yggdroot/indentLine)
