# NeovimConfigs
Neovim config. Plugins are installed using vim-plug(https://github.com/junegunn/vim-plug).
Requires:
- node.js(Mason, Coc)
- python3 with neovim package (Vimspector)

## Key Mappings
Using vimspector Human mappings for now(https://github.com/puremourning/vimspector#visual-studio--vscode)
Ctags:
- Jump to a tag: `Ctrl+]`
- Jump back: `Ctrl+O`
- Jump to a tag again: `Ctrl+I`
- F2: Toggle Tagbar

## Project requirements for DAP to work
vimspector.json file describing what DAP to use for project (https://github.com/puremourning/vimspector#launch-and-attach-by-pid)

## Todo: example of config setup for cpp
- PlugInstall
- CocInstall coc-clangd
