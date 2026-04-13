return {
  "folke/snacks.nvim",
  config = function()
    require("snacks").setup({
      explorer = {
        show_hidden = true,
        ignored = true,
      },
      picker = {
        sources = {
          explorer = {
            hidden = true,
            ignored = true,
          },
          files = {
            hidden = true,
            ignored = true,
          },
        },
      },
    })
  end,
}
