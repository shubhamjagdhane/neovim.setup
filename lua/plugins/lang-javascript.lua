-- JavaScript/React language support (.js, .jsx files)
-- LSP: vtsls | Formatter: prettier | Linter: eslint | Treesitter: javascript, jsx
return {
  -- Treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "javascript", "jsdoc" },
    },
  },

  -- LSP
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
          settings = {
            javascript = {
              suggest = { completeFunctionCalls = true },
              inlayHints = {
                parameterNames = { enabled = "literals" },
                variableTypes = { enabled = true },
                functionLikeReturnTypes = { enabled = true },
              },
            },
          },
        },
        eslint = {
          settings = {
            workingDirectories = { mode = "auto" },
          },
        },
      },
    },
  },

  -- Formatter
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
      },
    },
  },

  -- Mason: ensure tools are installed
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = { "vtsls", "eslint-lsp", "prettier" },
    },
  },
}
