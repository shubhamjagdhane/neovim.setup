local exclude = {
  "*/node_modules/*",
  "*/.git/*",
  "*/dist/*",
  "*/build/*",
  "*/.next/*",
  "*/.nuxt/*",
  "*/.output/*",
  "*/vendor/*",
  "*/__pycache__/*",
  "*/.venv/*",
  "*/venv/*",
  "*/.cache/*",
  "*/coverage/*",
  "*/.turbo/*",
}

return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          files = { exclude = exclude },
          grep = { exclude = exclude },
          grep_word = { exclude = exclude },
        },
      },
    },
  },
}
