if vim.loader then vim.loader.enable() end

local conf_files = {
	"settings",
	"plugins.core"
}

for _, module_name in ipairs(conf_files) do
	require(module_name)
end

vim.cmd("colorscheme cyberdream")
