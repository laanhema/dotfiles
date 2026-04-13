return {
  "CopilotC-Nvim/CopilotChat.nvim",
  dependencies = {
    { "nvim-telescope/telescope.nvim" },
    { "nvim-lua/plenary.nvim" },
  },
  opts = {
    model = "gemini-3.1-pro-preview",
    temperature = 0.1,
    auto_insert_mode = true,
    auto_follow_cursor = true, -- Automatically scroll with output
    window = {
      layout = "vertical",
      width = 0.35,
    },
  },
}
