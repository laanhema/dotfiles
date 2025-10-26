return {
  {
    "sainnhe/gruvbox-material",
    priority = 1000, -- make sure it loads before LazyVim colorscheme
    config = function()
      vim.g.gruvbox_material_background = "soft" -- choose 'hard', 'medium' or 'soft'
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_disable_italic_comment = false
      vim.cmd.colorscheme("gruvbox-material")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}
