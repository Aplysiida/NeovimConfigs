-- Run g++ command only for cpp files
function BuildAndDebug()
	local filepath =  vim.fn.getcwd() .. "/build/"
	--call build script
	os.execute("cd " .. filepath)
	os.execute("./debug.sh")
	--call debug on output
	vim.cmd("call vimspector#Launch")
end

function noremap(mode, lhs, rhs, opts)
	local options = { noremap = true }
    	if opts then
        	options = vim.tbl_extend("force", options, opts)
    	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

--vimspector mappings
vim.g.vimspector_enable_mappings = 'HUMAN'
--TODO:replace F5 with build and debug
--noremap('n', "<F5>", "<cmd>lua BuildAndDebug()<CR>", {})
noremap('n', "<F2>", "<cmd>TagbarToggle<CR>", {})

--coc mappings
noremap('i', "<CR>", "coc#pum#visible() ? coc#pum#confirm() : '<C-g>u<CR>'", {expr = true, silent = true, replace_keycodes = false})
vim.api.nvim_create_augroup("CocGroup", {})
vim.api.nvim_create_autocmd("CursorHold", {
	group = "CocGroup",
	command = "silent call CocActionAsync('highlight')",
	desc = "Highlight symbol under cursor on CursorHold"
})
