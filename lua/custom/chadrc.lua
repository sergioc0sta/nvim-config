local M = {}
local highlights = require "custom.highlights"

M.ui = {
  theme = "chadracula",
  theme_toggle = { "chadracula", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  statusline = {
    overriden_modules = function(modules)
      table.insert(
        modules,
        2,
        (function()
          local current_dir = vim.fn.getcwd()
          local buffer_path = vim.api.nvim_buf_get_name(0)
          local relative_path = buffer_path:sub(#current_dir + 2)
          return "%#St_LspStatus#" .. relative_path
        end)()
      )
    end,
    theme = "vscode_colored",
    enabled = true,
    options = {
      "encoding",
      "fileformat",
      "filetype",
      "copilot",
    },
  },
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
