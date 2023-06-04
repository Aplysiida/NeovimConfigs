-- Get g++ command for current cpp file
function GetCompileRunCmd (cpp_path, exe_path)
	local flags = " -Wall -std=c++17 "

	local compile_cmd = "g++ " .. cpp_path
	compile_cmd = compile_cmd .. flags

	local run_cmd = " -o " .. exe_path
	run_cmd = run_cmd .. " | "
	run_cmd = run_cmd .. exe_path

    return compile_cmd .. run_cmd
end

local Terminal = require("toggleterm.terminal").Terminal
local compile_term = Terminal:new({cmd = GetCompileRunCmd("",""), hidden = true})

-- Run g++ command only for cpp files
function CompileRunCpp()
    local cpp_path = vim.fn.expand("%:p")
    if(string.sub(cpp_path, -4, -1) == ".cpp") then
        compile_term.cmd = GetCompileRunCmd(cpp_path, vim.fn.expand("%:p:r"))
        compile_term:toggle()
    else
        print("Not a cpp file!")
    end
end

function noremap(mode, lhs, rhs, opts)
	local options = { noremap = true }
    	if opts then
        	options = vim.tbl_extend("force", options, opts)
    	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

--noremap('n', "<F5>", "<cmd>lua CompileRunCpp()<CR>", {})
 --vimspector mappings
vim.g.vimspector_enable_mappings = 'VISUAL_STUDIO'

--coc mappings
noremap('i', "<CR>", "coc#pum#visible() ? coc#pum#confirm() : '<C-g>u<CR>'", {expr = true, silent = true, replace_keycodes = false})
vim.api.nvim_create_augroup("CocGroup", {})
vim.api.nvim_create_autocmd("CursorHold", {
	group = "CocGroup",
	command = "silent call CocActionAsync('highlight')",
	desc = "Highlight symbol under cursor on CursorHold"
})
