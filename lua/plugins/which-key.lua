-- doc: https://github.com/folke/which-key.nvim
return {
  "folke/which-key.nvim",
  event = "VeryLazy",

  opts = function(_, opts)
    -- Calculate centered position for the popup
    local screen_h = vim.o.lines
    local screen_w = vim.o.columns

    -- Set popup width to 70% of the screen width
    local float_w = math.floor(screen_w * 0.60)

    -- Align horizontally
    local center_col = math.floor((screen_w - float_w) / 2)

    -- Align vertically
    local center_row = math.floor(screen_h * 0.50) + 7

    -- Configure window options
    opts.win = {
      border = "rounded",
      title = " Keymaps ",
      title_pos = "center",
      row = center_row,
      col = center_col,
      width = float_w,
    }

    opts.layout = {
      height = { min = 4, max = 20 },
      width = { min = 15, max = 30 },
      spacing = 3,
      align = "center",
    }

    opts.triggers = { "<leader>" }

    return opts
  end,

  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
