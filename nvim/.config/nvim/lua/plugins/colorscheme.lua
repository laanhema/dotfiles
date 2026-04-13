return {
  -- 1. Install the theme plugin (without the config function)
  {
    "rockyzhang24/arctic.nvim",
    branch = "v2",
    dependencies = { "rktjmp/lush.nvim" },
    priority = 1000,
    lazy = false,
  },
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
  },
  -- 2. Tell LazyVim to use it as the default
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "arctic",
    },
  },
}
