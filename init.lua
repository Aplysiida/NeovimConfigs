vim.opt.number = true

local powershell_opts = {
	shell = vim.fn.executable "pwsh" == 1 and "pwsh" or "powershell",
	shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
	shellredir = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
	shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
	shellquote = "",
	shellxquote = ""
}

--set shell to powershell if in windows
if(vim.fn.has("win32")) then
	for option, v in pairs(powershell_opts) do
		vim.opt[option] = v
	end
end

require ("plugins")
require ("hotkeys")
