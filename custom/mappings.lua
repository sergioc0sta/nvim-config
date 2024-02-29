local M = {}

M.geral = {
  n = {
    ["<leader>pr"] = { ":lua vim.lsp.buf.format()<CR>", "lint" },
    ["<leader>co"] = { "<cmd> Copilot panel <CR>", "CopilotePanell" },
  }
}

return M;
