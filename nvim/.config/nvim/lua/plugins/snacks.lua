return {
  "tamton-aquib/snacks.nvim",
  config = function()
    require("snacks").setup({
      explorer = {
        show_hidden = true,
      },
    })
  end,
}
