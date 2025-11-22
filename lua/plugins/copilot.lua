-- doc: https://github.com/zbirenbaum/copilot.lua
return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      -- suggestion = { enabled = false }, -- disable inline suggestions (blink.cmp will handle it)
      suggestion = { enabled = true, auto_trigger = true },
      panel = { enabled = true },
      filetypes = {
        ["*"] = true,
        markdown = false,
        help = false,
        gitcommit = false,
        gitrebase = false,
        hgcommit = false,
        svn = false,
        cvs = false,
      },
    })

    -- keymaps
    local map = vim.keymap.set
    local suggestion = require("copilot.suggestion")

    map("i", "<M-\\>", function()
      suggestion.accept_line()
    end, { desc = " Accept" })

    map("i", "<M-n>", function()
      suggestion.next()
    end, { desc = " Next Suggestion" })

    map("i", "<M-p>", function()
      suggestion.prev()
    end, { desc = " Previous Suggestion" })

    map("i", "<M-]>", function()
      suggestion.dismiss()
    end, { desc = " Dismiss" })

    map("i", "<M-[>", function()
      suggestion.toggle_auto_trigger()
    end, { desc = " Toggle Auto Trigger" })

    local panel = require("copilot.panel")
    map("n", "<leader>cp", function()
      panel.toggle()
    end, { desc = " Copilot Panel" })
    ------------------------------------------------------------------
  end,
}
