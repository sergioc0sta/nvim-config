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
opt.textwidth = 120
opt.foldcolumn = "1" -- '0' is not bad
opt.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
opt.foldlevelstart = 99
opt.foldenable = true
opt.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
-- opt.foldmethod = "indent"
