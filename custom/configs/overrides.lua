local M = {}
M.copilot = {
  panel = {
    enabled = true,
    auto_refresh = true,
    keymap = {
      jump_prev = "[[",
      jump_next = "]]",
      accept = "<CR>",
      refresh = "gr",
      open = "<M-CR>"
    },
    layout = {
      position = "bottom", -- | top | left | right
      ratio = 0.4
    },
  },
  suggestion = {
    enabled = true,
    auto_trigger = true,
    keymap = {
      accept = "<M-l>",
      accept_word = false,
      accept_line = false,
      next = "<M-]>",
      prev = "<M-[>",
      dismiss = "<C-]>",
    },
  },
}

M.treesitter = {
  ensure_installed = {
    "css",
    "vim",
    "javascript",
    "html",
    "typescript",
    "tsx",
    "markdown",
    "markdown_inline",
    "lua",
    "json",
    "sql"
  },
}

M.mason = {
  ensure_installed = {
    -- LSP's
    "eslint-lsp",
    "json-lsp",
    "css-lsp",
    "cssmodules-language-server",
    "html-lsp",
    "tailwindcss-language-server",
    "typescript-language-server",
    "clangd",
    -- Linters
    "eslint_d",
    -- Formatters
    "sql-formatter",
    "clang-format",
    "stylua",
    "prettier",
  },
}

M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
