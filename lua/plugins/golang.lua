return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          usePlaceholders = true,
          analyses = {
            unusedparams = true,
          },
          staticcheck = true,
          gofumpt = true,
          filetypes = { "go", "gomod", "gowork", "gotmpl" },
        },
      },
    },
  },
}
