-- TypeScript/React language support (.ts, .tsx files)
-- LSP: vtsls (shared with JS) | Formatter: prettier | Linter: eslint | Treesitter: typescript, tsx
return {
  -- Treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "typescript", "tsx" },
    },
  },

  -- LSP (vtsls is shared with JS — TypeScript-specific settings here)
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          settings = {
            typescript = {
              suggest = { completeFunctionCalls = true },
              inlayHints = {
                parameterNames = { enabled = "literals" },
                parameterTypes = { enabled = true },
                variableTypes = { enabled = true },
                propertyDeclarationTypes = { enabled = true },
                functionLikeReturnTypes = { enabled = true },
                enumMemberValues = { enabled = true },
              },
            },
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
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
      },
    },
  },

  -- Auto-closing and renaming of JSX/TSX tags
  {
    "windwp/nvim-ts-autotag",
    opts = {},
  },
}
