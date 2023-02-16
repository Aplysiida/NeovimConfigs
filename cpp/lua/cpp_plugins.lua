-- Plugins to use for this config
local Plug = vim.fn["plug#"]
local plug_path = vim.fn.has('nvim') and vim.fn.stdpath("data") , "/plugged" or "~/.vim/plugged"

vim.call("plug#begin", plug_path)

Plug "williamboman/mason.nvim"
Plug "williamboman/mason-lspconfig.nvim"
Plug "neovim/nvim-lspconfig"
Plug "nvim-treesitter/nvim-treesitter"

vim.call("plug#end")

require("mason_config")
require("lsp_config")
require("treesitter_config")

vim.api.nvim_create_autocmd({'VimEnter'}, {command="TSUpdate"})