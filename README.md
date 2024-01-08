# NeoVim Config

Inspired by (and mostly similar to) [ThePrimeagen/init.lua](https://github.com/ThePrimeagen/init.lua).

## First Time Setup

### Install NeoVim

See <https://github.com/neovim/neovim> for installation instructions.

### Clone This Repo

Clone this repo into the directory ```~/.config/nvim```, the directory which NeoVim looks for its config.

```bash
mkdir -p ~/.config/nvim
git clone https://github.com/cmcc83993/neovim-config.git ~/.config/nvim
```

### Install Pre-requisites on Your System

1. Install Node.js 14+ on your machine (ideally 20LTS)
2. Install dependencies for [Telescope](https://github.com/nvim-telescope/telescope.nvim)

## Plugins

Plugins are managed with [lazy](https://github.com/folke/lazy.nvim).

Main plugins:

- lazy
- Telescope
- Rose Pine (theme)
- Treesitter
- Harpoon
- Tmux Navigator
- LSP Zero
- Mason

Installation is simple: Open NeoVim, and Lazy should be installed. The only requirement is that you have an internet connection and access to GitHub. You should check the Lazy installation using ```:checkhealth lazy```.

## Language Support

This configuration uses [Mason](https://github.com/williamboman/mason.nvim) to install languages used as part of the LSP. To install a lanauge, open the Mason menu ```:Mason```. Follow the instructions to install servers for your desired languages.

You will also need to manage language support via [Tree-sitter](https://github.com/tree-sitter/tree-sitter). The Tree-sitter configuration is in ```after/plugin/treesitter.lua```. Edit the configuration as necessary.

## Key Bindings

Most key bindings are found in ```lua/conor/remap.lua```. See the table for a list of bindings.

| Key Binding  | Action                                             | Easy Way to Remember |
|--------------|----------------------------------------------------|----------------------|
| Space + p, v | Open netrw in current pane                         | Project View         |
| Space + p, s | Search project with grep (using Telescope)         | Project Search       |
| Space + p, f | Search project for a file                          | Project File         |
| Space + g, s | Search Git Repository                              | Git Search           |
| Ctrl + h     | Move focus to window to left of current            | Vim motion           |
| Ctrl + j     | Move focus to window below current                 | Vim motion           |
| Ctrl + k     | Move focus to window above current                 | Vim motion           |
| Ctrl + l     | Move focus to window to right of current           | Vim motion           |
| Space + y, y | Yank current selection to system clipboard         |                      |
| Space + a    | Mark current file (Harpoon)                        | Add                  |
| Ctrl + e     | View marked files (Harpoon) (can edit like in vim) | Edit (Harpoon)       |
| Ctrl + t     | View file 1 (Harpoon)                              |                      |
| Ctrl + b     | View file 2 (Harpoon)                              |                      |
| Ctrl + n     | View file 3 (Harpoon)                              |                      |
| Ctrl + s     | View file 4 (Harpoon)                              |                      |

