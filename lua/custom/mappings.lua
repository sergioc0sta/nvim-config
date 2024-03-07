---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>co"] = { "<cmd> Copilot panel <CR>", "CopilotePanell" },
    ["<leader>w"] = { "<cmd> w <CR>", "Save file" },
    ["<leader>q"] = {"<cmd> q <CR>", "Exit file"},
    ["<leader>pr"] = {"<cmd>Neoformat<CR>", "Format" },
    ["<leader>wq"] = {"<cmd> wq <CR>", "Exit and save"},
    ["r"] = {"<cmd> redo <CR>", "Rendo"},
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

return M
