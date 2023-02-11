vim.opt.number = true

function LoadPageToBrowser()
	local filepath = vim.fn.expand("%:p")
	io.popen("start firefox " .. filepath)
end

function noremap(mode, lhs, rhs, opts) 
	local options = { noremap = true }
    	if opts then
        	options = vim.tbl_extend("force", options, opts)
    	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.api.nvim_create_user_command("LoadPageToBrowser", function() LoadPageToBrowser() end, {nargs = 0, desc = 'Load html to browser'})
noremap('n', "<F2>", ":LoadPageToBrowser", {})

require ("webdev_plugins")
