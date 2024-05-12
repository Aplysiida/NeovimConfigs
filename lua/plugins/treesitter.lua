return {
	"nvim-treesitter/nvim-treesitter",
	commit = "e6cd337e30962cc0982d51fa03beedcc6bc70e3d",
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
