local keyMap = require("utils.keyMapper").keyMap 
-- keyMap usage:
-- keyMap(mode, lhs, rhs, opts)
-- mode: string or table of strings representing the mode(s) (e.g., "n", "i", "v", etc.)
-- lhs: string representing the key combination to map, e.g., "<leader>e"
-- rhs: string representing the command or key sequence to execute, e.g., ":Neotree toggle<CR>"
-- opts: table of options (optional), e.g., { noremap = true, silent = true }


-- Neotree toggle
keyMap("n", "<leader>e", ":Neotree toggle<CR>") -- Toggle file explorer

-- Panel navigation
keyMap("n", "<C-S-h>", "<C-w>h")      -- Move to left panel
keyMap("n", "<C-S-Left>", "<C-w>h")   -- Move to left panel
keyMap("n", "<C-S-j>", "<C-w>j")      -- Move to bottom panel
keyMap("n", "<C-S-Down>", "<C-w>j")   -- Move to bottom panel
keyMap("n", "<C-S-k>", "<C-w>k")      -- Move to top panel
keyMap("n", "<C-S-Up>", "<C-w>k")     -- Move to top panel
keyMap("n", "<C-S-l>", "<C-w>l")      -- Move to right panel
keyMap("n", "<C-S-Right>", "<C-w>l")  -- Move to right panel


-- Clear search highlights
keyMap("n", "<leader>nh", ":nohlsearch<CR>") -- Clear search highlights