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
    local suggestion = require("copilot.suggestion")


    vim.keymap.set("i", "<C-l>", function()
      suggestion.accept()
    end, { desc = "Copilot Accept" })


    vim.keymap.set("i", "<C-n>", function()
      suggestion.next()
    end, { desc = "Copilot Next Suggestion" })

    vim.keymap.set("i", "<C-p>", function()
      suggestion.prev()
    end, { desc = "Copilot Previous Suggestion" })

    vim.keymap.set("i", "<C-]>", function()
      suggestion.dismiss()
    end, { desc = "Copilot Dismiss" })

    local panel = require("copilot.panel")

    vim.keymap.set("n", "<leader>cp", function()
      panel.open()
    end, { desc = "Copilot Panel" })
    ------------------------------------------------------------------
  end,
}
