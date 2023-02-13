-- Plugins to use for this config
local Plug = vim.fn["plug#"]
local plug_path = vim.fn.has('nvim') and vim.fn.stdpath("data") , "/plugged" or "~/.vim/plugged"

vim.call("plug#begin", plug_path)

Plug "williamboman/mason.nvim"
Plug "williamboman/mason-lspconfig.nvim"
Plug "neovim/nvim-lspconfig"
Plug "nvim-treesitter/nvim-treesitter"
Plug "preservim/nerdtree"
Plug "Yggdroot/indentLine"
Plug "mattn/emmet-vim"
Plug "norcalli/nvim-colorizer.lua"
Plug "morhetz/gruvbox"

vim.call("plug#end")

require("mason_config")
require("lsp_config")
require("treesitter_config")

vim.api.nvim_create_autocmd({'VimEnter'}, {command="NERDTree"})
vim.api.nvim_create_autocmd({'VimEnter'}, {command="TSUpdate"})

vim.cmd [[ cd ~/Documents/ ]]

-- Setting theme colours
if(vim.fn.has("termguicolors")) then 
	vim.opt.termguicolors = true	-- enable true colors support
end

require("colorizer_config")

vim.g.gruvboxcolor = "dark"
vim.cmd [[ colorscheme gruvbox ]]