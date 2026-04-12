return {
  "folke/snacks.nvim",
  config = function()
    require("snacks").setup({
      explorer = {
        show_hidden = true,
        ignored = true,
      },
    })
  end,
}
