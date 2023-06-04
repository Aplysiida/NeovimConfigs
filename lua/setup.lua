-- setup configs
require("plugin_configs/mason_config")
require("plugin_configs/lsp_config")

-- require("treesitter_config")
require("toggleterm").setup({})
require("indent_blankline").setup({
		
})

vim.api.nvim_create_autocmd({'VimEnter'}, {command="NERDTree"})
-- vim.api.nvim_create_autocmd({'VimEnter'}, {command="TSUpdate"})	treesitter

vim.cmd [[ cd ~/Documents/ ]]

-- Setting theme colours
if(vim.fn.has("termguicolors")) then 
	vim.opt.termguicolors = true	-- enable true colors support
end

--theme
vim.o.background = "light"
vim.o.gruvbox_contrast_light = "hard"
vim.cmd [[ colorscheme gruvbox ]]

