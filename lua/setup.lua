-- setup configs
require("plugin_configs/mason_config")
require("plugin_configs/lsp_config")

require("indent_blankline").setup({})

vim.api.nvim_create_autocmd({'VimEnter'}, {command="NERDTree"})

-- Setting theme colours
if(vim.fn.has("termguicolors")) then 
	vim.opt.termguicolors = true	-- enable true colors support
end

--theme
vim.o.background = "light"
vim.o.gruvbox_contrast_light = "hard"
vim.cmd [[ colorscheme gruvbox ]]

