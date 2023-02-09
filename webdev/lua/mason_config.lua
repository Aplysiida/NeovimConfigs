local _mason = require("mason")
local settings = {
	ui = {
		check_outdated_packages_on_open = true,
		border = "none",
		width = 0.8,
		height = 0.8,
		icons = {
			package_installed = "✓",
            		package_pending = "➜",
            		package_uninstalled = "✗"
		}
	}
}

_mason.setup(settings)
require("mason-lspconfig").setup({automatic_installation = true})