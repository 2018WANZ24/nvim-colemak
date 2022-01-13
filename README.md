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
* Install [the_silver_searcher](https://github.com/ggreer/the_silver_searcher)
* If you need C/C++/Objective-C language server(coc-clangd), install [clangd](https://clangd.llvm.org/installation)
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
| H             | Cursor to the first non-blank character of the line |
| L             | Cursor to the end of the line                       |
| J             | Cursor up 5 lines                                   |
| K             | Cursor down 5 lines                                 |
| >             | Indent                                              |
| <             | Un-indent                                           |
| \`            | Toggle case                                         |
| ;             | Command mode                                        |
| vv            | Select non-blank characters of the line except `\n` |
| \<Space>\<CR> | No highlight search                                 |
| q             | Close the window or tab                             |
| W             | Save                                                |

* Cursor down: `'` + `a/s/d/f/g/h/j/k/l/;` (as 1/2/3/4/5/6/7/8/9/0)
* Cursor up: `[` + `a/s/d/f/g/h/j/k/l/;` (as 1/2/3/4/5/6/7/8/9/0)

#### 1.2 Window Management
| Shortcut          | Action                                        |
|-------------------|-----------------------------------------------|
| sH                | Split left                                    |
| sJ                | Split below                                   |
| sK                | Split above                                   |
| sL                | Split right                                   |
| \<Space> + number | Go to window(number)                          |
| sh                | Go one window left                            |
| sj                | Go one window below                           |
| sk                | Go one window above                           |
| sl                | Go one window right                           |
| \<Up>             | (Horizontal) Window size +5 lines             |
| \<Down>           | (Horizontal) Window size -5 lines             |
| \<Right>          | (Vertical) Window size +5 lines               |
| \<Left>           | (Vertical) Window size -5 lines               |
| sb                | Set the two splits to be horizontal           |
| sv                | Set the two splits to be vertical             |
| srb               | Rotate splits and arrange splits horizontally |
| srv               | Rotate splits and arrange splits vertically   |
| sth               | Open terminal on the left                     |
| stj               | Open terminal below                           |
| stk               | Open terminal above                           |
| stl               | Open terminal on the right                    |
| stt               | Open terminal in a new tab                    |

#### 1.3 Tab Management
| Shortcut           | Action            |
|--------------------|-------------------|
| tn                 | New tab           |
| \<Leader> + number | Go to tab(number) |
| th                 | Go one tab left   |
| tl                 | Go one tab right  |

#### 1.4 Others
| Shortcut  | Action |
|-----------|--------|
| \<Space>e | Run    |

### 2 Plugins
The plugin manager is [vim-plug](https://github.com/junegunn/vim-plug).

#### 2.1 Language Servers
* [coc.nvim](https://github.com/neoclide/coc.nvim) for AutoCompletion

| Shortcut       | Action                                                                           |
|----------------|----------------------------------------------------------------------------------|
| \<C-j>         | Next completion                                                                  |
| \<C-k>         | Previous completion                                                              |
| \<Tab>         | Complete                                                                         |
| \<C-s>         | Refresh completions                                                              |
| [g             | Go to previous diagnostic                                                        |
| ]g             | Go to next diagnostic                                                            |
| gd             | Go to definition                                                                 |
| gy             | Go to type definition                                                            |
| gi             | Go to implementation                                                             |
| gr             | Go to references                                                                 |
| \<Space>h      | Show documentation                                                               |
| \<Space>rn     | Rename                                                                           |
| \<Space>m      | Format selected                                                                  |
| \<Space>a      | Code actions (on visual mode)                                                    |
| \<Space>aw     | Code actions (on normal mode)                                                    |
| \<operation>if | Operation for what is in a function                                              |
| \<operation>af | Operation for the whole function                                                 |
| \<operation>ic | Operation for what is in a class                                                 |
| \<operation>ac | Operation for the whole class                                                    |
| \<C-]>/<C-[>   | Scroll a floating window                                                         |
| sw             | Go to a floating window                                                          |
| \<C-l>         | Jump to next snippets placeholder (on insert mode)                               |
| \<C-h>         | Jump to previous snippets placeholder (on insert mode)                           |
| \<F3>          | Toggle file explorer ([coc-explorer](https://github.com/weirongxu/coc-explorer)) |
| \<Space>yy     | Show yank history ([coc-yank](https://github.com/neoclide/coc-yank))             |
| \<Space>yc     | Clear yank history ([coc-yank](https://github.com/neoclide/coc-yank))            |
| \<Space>ol     | Show flutter outline (**Only works in dart files**)                              |

* [vim-snippets](https://github.com/honza/vim-snippets) for snippets

* [dart-vim-plugin](https://github.com/dart-lang/dart-vim-plugin) for dart

* [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) for markdown

#### 2.2 Other Plugins

* [gruvbox](https://github.com/morhetz/gruvbox) and [nvim-deus](https://github.com/theniceboy/nvim-deus) colorthemes

* [vim-airline](https://github.com/vim-airline/vim-airline) for statusline and [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes) vim-airline colorthemes

* [vista.vim](https://github.com/liuchengxu/vista.vim)

| Shortcut  | Action         |
|-----------|----------------|
| \<F2>     | Toggle taglist |
| \<Space>t | Search tags    |

* [undotree](https://github.com/mbbill/undotree)

| Shortcut | Action          |
|----------|-----------------|
| \<F4>    | Toggle undotree |

* [fzf](http://github.com/junegunn/fzf) and [fzf.vim](https://github.com/junegunn/fzf.vim)

| Shortcut  | Action                                        |
|-----------|-----------------------------------------------|
| \<Space>f | Search files in current directory             |
| \<Space>p | Search contents of files in current directory |
| \<Space>b | Search buffers                                |
| \<Space>l | Search contents of lines in current file      |
| \<Space>c | Search commands                               |

* [nerdcommenter](https://github.com/preservim/nerdcommenter)

| Shortcut | Action                            |
|----------|-----------------------------------|
| mc       | Comment current line or selection |

* [vim-table-mode](https://github.com/dhruvasagar/vim-table-mode)

| Shortcut   | Action            |
|------------|-------------------|
| \<Leader>tm | Toggle table mode |

* [auto-pairs](https://github.com/jiangmiao/auto-pairs)

* [rainbow](https://github.com/luochen1990/rainbow)

* [wildfire.vim](https://github.com/gcmt/wildfire.vim)

* [vim-surround](https://github.com/tpope/vim-surround)

* [vim-visual-multi](https://github.com/mg979/vim-visual-multi)

* [indentLine](https://github.com/Yggdroot/indentLine)
