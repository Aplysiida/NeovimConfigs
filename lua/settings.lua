-- Set vim settings for config --
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.shiftwidth = 2
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.clipboard = "unnamedplus"
--vim.opt.clipboard:append { "unnamed", "unnamedplus" }

vim.wo.relativenumber = true
vim.wo.number = true

vim.g.netrw_keepdir = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

--[[
if vim.fn.has("win32") then
  vim.g.clipboard = {
    copy = {
      ['+'] = "clip.exe",
      ['*'] = "clip.exe",
    },
    paste = {
      ['+'] = "powershell.exe Get-Clipboard -Raw",
      ['*'] = "powershell.exe Get-Clipboard -Raw",
    },
    cache_enabled = 1,
  }
else    -- for Linux --
  vim.g.clipboard = {
    copy = {
      ['+'] = "clip.exe",
      ['*'] = "clip.exe",
    },
    paste = {
      ['+'] = "powershell.exe Get-Clipboard -Raw",
      ['*'] = "powershell.exe Get-Clipboard -Raw",
    },
    cache_enabled = 1,
  }
end
--]]
