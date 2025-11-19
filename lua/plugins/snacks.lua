-- doc: https://github.com/folke/snacks.nvim
return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    bigfile = { enabled = true },  -- enhanced handling of large files
    dashboard = { enabled = true }, -- a start screen for Neovim
    explorer = { enabled = true },  -- enhanced file explorer
    indent = { enabled = true },  -- enhanced indent guides
    input = { enabled = true }, -- enhanced input UI
    picker = { enabled = true },  -- enhanced picker UI
    notifier = { enabled = true },  -- enhanced notification UI
    quickfile = { enabled = true }, -- quick file switcher
    scope = { enabled = true },   -- show scope in statusline
    scroll = { enabled = true },  -- enhanced scrollbars
    statuscolumn = { enabled = true },  -- enhanced statuscolumn
    statusline = { enabled = true },  -- enhanced statusline
    words = { enabled = true }, -- enhanced word motions
  },
} 