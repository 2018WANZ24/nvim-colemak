# nvim
My neovim config
<center><img src="https://raw.githubusercontent.com/2018WANZ24/nvimrc/master/demo.png"></center>

## Installation
* Backup your nvimrc:
```
cd ~/.config
mv nvim nvim_back
```
* Install [vim-plug](https://github.com/junegunn/vim-plug)
* Install [npm](https://github.com/npm/cli)
* Install [yarn](https://classic.yarnpkg.com/en/docs/install)
* Install [fzf](https://github.com/junegunn/fzf)
* Install [ripgrep](https://github.com/BurntSushi/ripgrep)
* Clone this repository:
```
git clone https://github.com/2018WANZ24/nvimrc.git ~/.config/nvim/
```
* In nvim, run `:PlugInstall`

## Keyboard Shortcuts
### 1 Basic Editor Features
#### 1.1 Basic Remappings
| Shortcut      | Action                                              |
|---------------|-----------------------------------------------------|
| N             | Cursor to the first non-blank character of the line |
| I             | Cursor to the end of the line                       |
| E             | Next page                                           |
| U             | Previous page                                       |
| >             | Indent                                              |
| <             | Un-indent                                           |
| \`            | Toggle case                                         |
| ;             | Command mode                                        |
| vv            | Select non-blank characters of the line except `\n` |
| \<Space>\<CR> | No highlight search                                 |
| q             | Quit                                                |
| W             | Save                                                |

* Cursor down: `'` + `a/s/d/f/g/h/j/k/l/;` (as 1/2/3/4/5/6/7/8/9/0)
* Cursor up: `[` + `a/s/d/f/g/h/j/k/l/;` (as 1/2/3/4/5/6/7/8/9/0)

#### 1.2 Window Management
| Shortcut          | Action                                        |
|-------------------|-----------------------------------------------|
| sN                | Split left                                    |
| sE                | Split below                                   |
| sU                | Split above                                   |
| sI                | Split right                                   |
| \<Space> + number | Go to window(number)                          |
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
| stn               | Open terminal on the left                     |
| ste               | Open terminal below                           |
| stu               | Open terminal above                           |
| sti               | Open terminal on the right                    |
| stt               | Open terminal in a new tab                    |

#### 1.3 Tab Management
| Shortcut           | Action                |
|--------------------|-----------------------|
| tu                 | New tab               |
| \<Leader> + number | Go to tab(number)     |
| tn                 | Go one tab left       |
| ti                 | Go one tab right      |
| tmn                | Move tab to the left  |
| tmi                | Move tab to the right |

#### 1.4 Others
| Shortcut  | Action |
|-----------|--------|
| \<Space>r | Run    |

### 2 Plugins
The plugin manager is [vim-plug](https://github.com/junegunn/vim-plug).

#### 2.1 Language Servers
* [coc.nvim](https://github.com/neoclide/coc.nvim) for AutoCompletion

| Shortcut       | Action                                                                           |
|----------------|----------------------------------------------------------------------------------|
| \<C-e>         | Next completion                                                                  |
| \<C-u>         | Previous completion                                                              |
| \<Tab>         | Complete                                                                         |
| \<Space>-      | Go to previous diagnostic                                                        |
| \<Space>=      | Go to next diagnostic                                                            |
| gd             | Go to definition                                                                 |
| gy             | Go to type definition                                                            |
| gi             | Go to implementation                                                             |
| gr             | Go to references                                                                 |
| \<Space>h      | Show documentation                                                               |
| mr             | Rename                                                                           |
| maf            | Format selected                                                                  |
| maw            | Code actions                                                                     |
| \<operation>kf | Operation for what is in a function                                              |
| \<operation>af | Operation for the whole function                                                 |
| \<operation>kc | Operation for what is in a class                                                 |
| \<operation>ac | Operation for the whole class                                                    |
| \<C-]>/<C-[>   | Scroll a floating window                                                         |
| sf             | Go to next window                                                                |
| \<C-e>         | Jump to next snippets placeholder (on insert mode)                               |
| \<C-n>         | Jump to previous snippets placeholder (on insert mode)                           |
| tt             | Toggle file explorer ([coc-explorer](https://github.com/weirongxu/coc-explorer)) |
| \<Space>y      | Show yank history ([coc-yank](https://github.com/neoclide/coc-yank))             |
| \<Space>ol     | Show flutter outline (**Only works in dart files**)                              |

* [vim-snippets](https://github.com/honza/vim-snippets) for snippets

* [dart-vim-plugin](https://github.com/dart-lang/dart-vim-plugin) for dart

* [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) for markdown

#### 2.2 Other Plugins

* [gruvbox](https://github.com/morhetz/gruvbox) and [nvim-deus](https://github.com/theniceboy/nvim-deus) colorthemes

* [vim-airline](https://github.com/vim-airline/vim-airline) for statusline and [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes) vim-airline colorthemes

* [vista.vim](https://github.com/liuchengxu/vista.vim)

| Shortcut   | Action         |
|------------|----------------|
| \<Space>v | Toggle taglist |
| \<C-t>     | Search tags    |

* [undotree](https://github.com/mbbill/undotree)

| Shortcut   | Action          |
|------------|-----------------|
| tt | Toggle undotree |

* [fzf](http://github.com/junegunn/fzf) and [fzf.vim](https://github.com/junegunn/fzf.vim)

| Shortcut | Action                                        |
|----------|-----------------------------------------------|
| \<C-f>   | Search files in current directory             |
| \<C-p>   | Search contents of files in current directory |
| \<C-w>   | Search buffers                                |
| \<C-l>   | Search contents of lines in current file      |
| \<C-c>   | Search commands                               |

* [nerdcommenter](https://github.com/preservim/nerdcommenter)

| Shortcut | Action                            |
|----------|-----------------------------------|
| mc       | Comment current line or selection |

* [vim-table-mode](https://github.com/dhruvasagar/vim-table-mode)

| Shortcut   | Action            |
|------------|-------------------|
| \<Space>tm | Toggle table mode |

* [auto-pairs](https://github.com/jiangmiao/auto-pairs)

* [rainbow](https://github.com/luochen1990/rainbow)

* [wildfire.vim](https://github.com/gcmt/wildfire.vim)

* [vim-surround](https://github.com/tpope/vim-surround)

* [vim-visual-multi](https://github.com/mg979/vim-visual-multi)

* [indentLine](https://github.com/Yggdroot/indentLine)
