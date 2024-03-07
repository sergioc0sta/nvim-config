-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
local opt = vim.opt
opt.shiftwidth = 2
opt.tabstop = 2
opt.relativenumber = true
opt.colorcolumn = "120"
opt.wrap = true
opt.foldmethod = "indent"
