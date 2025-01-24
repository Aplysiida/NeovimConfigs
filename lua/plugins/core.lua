-- Setup lazy.nvim for plugins --
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- List of plugins and their configs here --
local plugins = {
        {"Yggdroot/indentLine"},
        require("plugins.cyberdream"),
	require("plugins.lsp"),
        require("plugins.treesitter"),
        require("plugins.cmp"),
        require("plugins.telescope"),
}

local lazy_opt = {
}

require("lazy").setup{
	plugins,
	lazy_opt,
}
