-- Plugins to use for this config
local Plug = vim.fn["plug#"]
local plug_path = vim.fn.has('nvim') and vim.fn.stdpath("data") , "/plugged" or "~/.vim/plugged"

vim.call("plug#begin", plug_path)
 --lsp 
Plug "williamboman/mason.nvim"
Plug "williamboman/mason-lspconfig.nvim"
Plug "neovim/nvim-lspconfig"
--debugger
Plug "puremourning/vimspector"
--code completion
Plug ("neoclide/coc.nvim", {branch = "release", ['do'] = "yarn install --frozen-lockfile"})
--ctags
Plug "ludovicchabant/vim-gutentags"
Plug "preservim/tagbar"
--visuals
Plug "preservim/nerdtree"
Plug "lukas-reineke/indent-blankline.nvim"
Plug "morhetz/gruvbox"

vim.call("plug#end")

require("setup")
