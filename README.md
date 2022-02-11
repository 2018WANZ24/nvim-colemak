# nvim
My neovim config for **colemak** users
<center><img src="https://raw.githubusercontent.com/2018WANZ24/nvim-colemak/master/demo.png"></center>

## Installation
* Backup your nvimrc:
```
cd ~/.config; mv nvim nvim_back
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
* [vim-plug](https://github.com/junegunn/vim-plug) (plugin manager) will automatically install to `~/.config/nvim/autoload/plug.vim`
* In nvim, run `:PlugInstall`

## Keyboard Shortcuts
### 1 Basic Editor Features
#### 1.1 Basic Remappings

| Shortcut      | Action                                             |
|---------------|----------------------------------------------------|
| `n`           | Cursor left                                        |
| `e`           | Cursor down                                        |
| `u`           | Cursor up                                          |
| `i`           | Cursor right                                       |
| `l`           | Undo                                               |
| `k`           | Insert mode                                        |
| `K`           | Insert text before the first non-blank in the line |
| `h`           | Forward to the end of word                         |
| `H`           | Forward to the end of WORD                         |
| `-`           | Search previous                                    |
| `=`           | Search next                                        |
| `<C-n>`       | Go to start of the line (insert/command mode)      |
| `<C-o>`       | Go to end of the line (insert/command mode)        |
| `<C-u>`       | Up (insert/command mode)                           |
| `<C-e>`       | Down (insert/command mode)                         |
| `<C-l>`       | Previous command history (Command mode)            |
| `<C-y>`       | Next command history (Command mode)                |
| `<C-u>`       | Previous page                                      |
| `<C-e>`       | Next page                                          |
| `N`           | Cursor to the first non-blank of the line          |
| `I`           | Cursor to the end of the line                      |
| `W`           | Move cursor 5 words forward                        |
| `B`           | Move cursor 5 words backward                       |
| `>`           | Indent                                             |
| `<`           | Un-indent                                          |
| `             | Toggle case                                        |
| `;`           | Command mode                                       |
| `j`           | Go to pair                                         |
| `vv`          | Select non-blank of the line except `\n`           |
| `<Space><CR>` | No highlight search                                |
| `Q`           | Record typed characters into register              |
| `q`           | Quit                                               |
| `S`           | Save                                               |
| `<A-s>`       | Source nvim configuration file                     |
| `<C-c>`       | cd                                                 |

* Cursor down: `'` + `a/r/s/t/d/h/n/e/i/o` (as `1/2/3/4/5/6/7/8/9/0`)
* Cursor up: `[` + `a/r/s/t/d/h/n/e/i/o` (as `1/2/3/4/5/6/7/8/9/0`)

#### 1.2 Window Management

| Shortcut             | Action                                        |
|----------------------|-----------------------------------------------|
| `sN`                 | Split left                                    |
| `sE`                 | Split below                                   |
| `sU`                 | Split above                                   |
| `sI`                 | Split right                                   |
| `<Space>` + `number` | Go to window by number                        |
| `sn`                 | Go one window left                            |
| `se`                 | Go one window below                           |
| `su`                 | Go one window above                           |
| `si`                 | Go one window right                           |
| `<Up>`               | (Horizontal) Window size +5 lines             |
| `<Down>`             | (Horizontal) Window size -5 lines             |
| `<Right>`            | (Vertical) Window size +5 lines               |
| `<Left>`             | (Vertical) Window size -5 lines               |
| `sh`                 | Set the two splits to be horizontal           |
| `sv`                 | Set the two splits to be vertical             |
| `srh`                | Rotate splits and arrange splits horizontally |
| `srv`                | Rotate splits and arrange splits vertically   |
| `sf`                 | Go to next window                             |
| `sc`                 | Close other windows                           |
| `sq`                 | Close next window                             |

#### 1.3 Tab Management

| Shortcut              | Action                |
|-----------------------|-----------------------|
| `ss`                  | New tab               |
| `<Leader>` + `number` | Go to tab by number   |
| `sl`                  | Go to previous tab    |
| `sy`                  | Go to next tab        |
| `sml`                 | Move tab to the left  |
| `smy`                 | Move tab to the right |

#### 1.4 Others

| Shortcut    | Action                                    |
|-------------|-------------------------------------------|
| `<Space>rr` | Run                                       |
| `,r`        | Insert placeholder <++> (Insert mode)     |
| `,f`        | Go to next placeholder <++> (Insert mode) |

### 2 Plugins
The plugin manager is [vim-plug](https://github.com/junegunn/vim-plug).

* [gruvbox](https://github.com/morhetz/gruvbox), [nvim-deus](https://github.com/theniceboy/nvim-deus) and [onedark](https://github.com/joshdick/onedark.vim) (colorthemes)

* [vim-airline](https://github.com/vim-airline/vim-airline) (statusline) and [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes) (vim-airline colorthemes)

* [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) (highlight)

* [nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow)

* [coc.nvim](https://github.com/neoclide/coc.nvim)

| Shortcut             | Action                                              |
|----------------------|-----------------------------------------------------|
| `<C-e>`              | Next completion                                     |
| `<C-u>               | Previous completion                                 |
| `<Tab>`              | Complete                                            |
| `g[`                 | Go to previous diagnostic                           |
| `g]`                 | Go to next diagnostic                               |
| `gd`                 | Go to definition                                    |
| `gy`                 | Go to type definition                               |
| `gi`                 | Go to implementation                                |
| `gr`                 | Go to references                                    |
| `<Space>h`           | Show documentation                                  |
| `mr`                 | Rename                                              |
| `maf`                | Format selected                                     |
| `mas`                | Code actions                                        |
| `<operation>` + `kf` | Operation for what is in a function                 |
| `<operation>` + `af` | Operation for the whole function                    |
| `<operation>` + `kc` | Operation for what is in a class                    |
| `<operation>` + `ac` | Operation for the whole class                       |
| `<C-]>`/`<C-[>`      | Scroll a floating window                            |
| `<C-l>`              | Jump to previous snippets placeholder (insert mode) |
| `<C-y>`              | Jump to next snippets placeholder (insert mode)     |
| `<Space>ol`          | Show flutter outline (Only works in dart files)     |
| `<Space>t`           | Toggle file explorer                                |
| `<Space>y`           | Show yank history                                   |
| `<A-t>`              | Translate current word                              |
| `<Space>f`           | Search files in current directory                   |
| `<Space>p`           | Search contents of files in current directory       |
| `<Space>w`           | Search buffers                                      |
| `<Space>s`           | Search contents of lines in current file            |
| `<Space>oc`          | Search commands                                     |
| `<Space>oa`          | Search tasks                                        |
| `<Space>ot`          | Search floaterms                                    |
| `g-`                 | Go to previous git hunk                             |
| `g=`                 | Go to next git hunk                                 |
| `gF`                 | Go to previous git conflict                         |
| `gf`                 | Go to next git conflict                             |
| `gf`                 | Preview current git hunk                            |
| `<operation>` + `kg` | Operation for what is in a git hunk                 |
| `<operation>` + `ag` | Operation for the whole git hunk                    |
| `gl`                 | Undo current git hunk                               |
| `gs`                 | Stage current git hunk                              |
| `zg`                 | Fold unchanged (git)                                |
| `gp`                 | Git push                                            |

* [asyncrun.vim](https://github.com/skywind3000/asyncrun.vim)

* [asynctasks.vim](https://github.com/skywind3000/asynctasks.vim)

| Shortcut     | Action                |
|--------------|-----------------------|
| `<Space>rf`  | Run current file      |
| `<Space>rbf` | Build current flie    |
| `<Space>rp`  | Run current project   |
| `<Space>rbp` | Build current project |

* [vim-snippets](https://github.com/honza/vim-snippets)

* [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)

* [vista.vim](https://github.com/liuchengxu/vista.vim)

| Shortcut   | Action         |
|------------|----------------|
| `<Space>v` | Toggle taglist |

* [undotree](https://github.com/mbbill/undotree)

| Shortcut | Action                    |
|----------|---------------------------|
| `L`      | Toggle undotree           |
| `u`      | Move cursor up a state    |
| `e`      | Move cursor down a state  |
| `U`      | Move cursor up 5 states   |
| `E`      | Move cursor down 5 states |

* [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim)

| Shortcut | Action       |
|----------|--------------|
| `go`     | Open lazygit |

* [rnvimr](https://github.com/kevinhwang91/rnvimr)

| Shortcut | Action                             |
|----------|------------------------------------|
| `R`      | Open ranger                        |
| `<C-t>`  | Open the file in a new tab         |
| `<C-x>`  | Split up and down with the file    |
| `<C-p>`  | Split left and right with the file |
| `gw`     | Change ranger's cwd to nvim's      |
| `yw`     | Change nvim's cwd to ranger's      |

* [tcomment_vim](https://github.com/preservim/nerdcommenter)

| Shortcut        | Action                            |
|-----------------|-----------------------------------|
| `mc`            | Comment current line or selection |
| `mv``operation` | Comment lines                     |

* [vim-visual-multi](https://github.com/mg979/vim-visual-multi)

The vim-visual-multi leader is `,`.

| Shortcut | Action                        |
|----------|-------------------------------|
| `<C-k>`  | Find Under/Find Subword Under |
| `E`      | Select Cursor Down            |
| `U`      | Select Cursor Up              |

* [vim-hexokinase](https://github.com/RRethy/vim-hexokinase)

* [vim-table-mode](https://github.com/dhruvasagar/vim-table-mode)

* [auto-pairs](https://github.com/jiangmiao/auto-pairs)

| Shortcut | Action                          |
|----------|---------------------------------|
| `<A-w>`  | Wrap word or pair (insert mode) |

* [vim-after-object](https://github.com/junegunn/vim-after-object)

* [wildfire.vim](https://github.com/gcmt/wildfire.vim)

* [vim-surround](https://github.com/tpope/vim-surround)

* [indentLine](https://github.com/Yggdroot/indentLine)

* [clever-f.vim](https://github.com/rhysd/clever-f.vim)

* [vim-floaterm](https://github.com/voldikss/vim-floaterm)

| Shortcut | Action                   |
|----------|--------------------------|
| `<A-u>`  | New floterm              |
| `<A-e>`  | Toggle floterm           |
| `<A-n>`  | Previous floterm         |
| `<A-i>`  | Next floterm             |
| `<A-q>`  | Kill current floterm     |
| `stn`    | New floterm on the left  |
| `ste`    | New floterm below        |
| `stu`    | New floterm above        |
| `sti`    | New floterm on the right |
| `<A-x>`  | Normal mode              |
| `<A-w>`  | Go to next window        |

