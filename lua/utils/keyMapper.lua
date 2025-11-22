-- local keyMapper = function(mode, lhs, rhs, opts)
--     -- mode: string or table of strings representing the mode(s) (e.g., "n", "i", "v", etc.)
--     -- lhs: string representing the key combination to map, e.g., "<leader>e"
--     -- rhs: string representing the command or key sequence to execute, e.g., ":Neotree toggle<CR>"
--     -- opts: table of options (optional), e.g., { noremap = true, silent = true }

--   -- Default options
--   local options = { noremap = true, silent = true }

--   -- Default to normal mode if not specified
--   mode = mode or "n"

--   -- Merge user-provided options with defaults
--   if opts then
--     -- prioritize user options
--     options = vim.tbl_extend("force", options, opts)
--   end
--   vim.keymap.set(mode, lhs, rhs, options)
-- end

-- return { keyMap = keyMapper }