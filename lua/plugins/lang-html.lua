-- HTML language support (.html files)
-- LSP: html, emmet_ls | Formatter: prettier | Treesitter: html, css
return {
  -- Treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "html", "css" },
    },
  },

  -- LSP
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {},
        cssls = {},
        emmet_ls = {
          filetypes = { "html", "css", "jsx", "tsx" },
        },
      },
    },
  },

  -- Formatter
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        html = { "prettier" },
        css = { "prettier" },
      },
    },
  },

  -- Mason: ensure tools are installed
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = { "html-lsp", "css-lsp", "emmet-ls", "prettier" },
    },
  },
}
