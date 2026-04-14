return {
  "folke/snacks.nvim",
  opts = {
    explorer = {
      show_hidden = true,
      ignored = true,
    },
    picker = {
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
          focus = "list",
        },
        files = {
          hidden = true,
          ignored = true,
        },
      },
    },
  },
}
