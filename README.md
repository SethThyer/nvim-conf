# My Neovim config using lua

Work's especially well with: Javascript, Typescript; TSX, JSX; C, CPP and C#.
Other language servers can be globally installed and then referenced in `lspconfig.lua` for increased extensibility.

## Dependencies
* <a href="https://github.com/neovim/neovim">Neovim</a>
* <a href="https://github.com/wbthomason/packer.nvim">Packer</a>

## Notable Plugins include:
+ Galaxyline
+ Treesitter
+ Telescope
+ LSP
+ NERDTree
+ ToggleTerm
## Install Intructions
1.
```
$ git clone https://github.com/SethThyer/nvim-conf.git
$ mv nvim-conf ~/.config/nvim
```
2.
```
:PackerUpdate
:PackerCompile
```
