-- Set vim settings for config --
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.shiftwidth = 2
vim.opt.termguicolors = true
vim.opt.background = "light"
vim.opt.clipboard = "unnamed"

vim.wo.relativenumber = true
vim.wo.number = true

vim.g.netrw_keepdir = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- For .frag and .vert shaders --
vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern={"*.frag", "*.vert"},
  command="setfiletype glsl",
})
