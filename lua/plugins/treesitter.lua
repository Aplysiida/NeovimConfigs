return {
	"nvim-treesitter/nvim-treesitter",
	commit = "",
	build = {
		":TSUpdate",
		-- from 
		":TSInstall lua"
	},
	opts = {
		ensure_installed = {"c", "lua"},
		highlight = {enable = true},
	},
	config = function(_,opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
