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

noremap('n', "<F2>", "<cmd>lua LoadPageToBrowser()<CR>", {})

require ("webdev_plugins")
