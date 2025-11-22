-- doc: https://github.com/folke/which-key.nvim
return {
  "folke/which-key.nvim",
  event = "VeryLazy",

  -- Base options applied at startup
  opts = function(_, opts)
    opts.icons = { mappings = false }
    opts.triggers = { "<leader>" }
    -- Layout settings for the popup window
    opts.layout = {
      height = { min = 4, max = 20 },        -- Min/max number of rows
      width = { min = 15, max = 30 },        -- Min/max column size
      spacing = 3,                           -- Column spacing
      align = "center",                      -- Center-align items
    }
    return opts
  end,

  config = function(_, opts)
    local wk = require("which-key")

    -- Function to compute centered popup coordinates dynamically.
    -- This makes the popup follow terminal window size changes.
    local function compute_win()
      local screen_h = vim.o.lines
      local screen_w = vim.o.columns
      local float_w = math.floor(screen_w * 0.60)   -- Popup width = 60% of screen width
      local center_col = math.floor((screen_w - float_w) / 2)   -- Center horizontally
      local center_row = math.floor(screen_h * 0.50) + 7    -- Slight vertical shift downward

      return {
        border = "rounded",
        title = " Keymaps ",
        title_pos = "center",
        row = center_row,
        col = center_col,
        width = float_w,
      }
    end

    -- Initial setup: compute popup position before the first display
    opts.win = compute_win()
    wk.setup(opts)

    -- Apply popup updates while preserving all other options
    local function apply_dynamic_win()
      local new_opts = vim.tbl_deep_extend("force", opts, {
        win = compute_win(),
      })
      wk.setup(new_opts)
    end

    -- Recalculate window position when the terminal window is resized
    vim.api.nvim_create_autocmd("VimResized", {
      callback = apply_dynamic_win,
    })

    -- Recalculate immediately before which-key is shown
    vim.api.nvim_create_autocmd("User", {
      pattern = "WhichKeyPre",
      callback = apply_dynamic_win,
    })
  end,
}