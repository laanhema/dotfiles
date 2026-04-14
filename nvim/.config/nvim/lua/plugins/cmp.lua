return {
  "hrsh7th/nvim-cmp",
  -- You can list cmp's dependencies here so they load together
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
  },
  config = function()
    local cmp = require("cmp")

    cmp.setup({
      -- ... your snippet setup and sources go here ...

      mapping = cmp.mapping.preset.insert({
        -- Unmap Enter
        ["<CR>"] = cmp.config.disable,

        -- Map Tab to accept
        ["<Tab>"] = cmp.mapping.confirm({ select = true }),

        -- Arrow keys (optional)
        ["<Down>"] = cmp.mapping.select_next_item(),
        ["<Up>"] = cmp.mapping.select_prev_item(),
      }),
    })
  end,
}
