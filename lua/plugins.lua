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
--visuals
-- Plug "nvim-treesitter/nvim-treesitter" used for improved highlighting, doesn't work with lua
Plug "preservim/nerdtree"
Plug "akinsho/toggleterm.nvim"
Plug "lukas-reineke/indent-blankline.nvim"
--Plug "Yggdroot/indentLine"
Plug "morhetz/gruvbox"

vim.call("plug#end")

require("setup")
