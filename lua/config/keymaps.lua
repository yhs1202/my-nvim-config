local keyMap = require("utils.keyMapper").keyMap

-- Neotree toggle
keyMap("<leader>e", ":Neotree toggle<CR>") -- Toggle file explorer

-- Panel navigation
keyMap("<C-h>", "<C-w>h") -- Move to left panel
keyMap("<C-Left>", "<C-w>h") -- Move to left panel
keyMap("<C-j>", "<C-w>j") -- Move to bottom panel
keyMap("<C-Down>", "<C-w>j") -- Move to bottom panel
keyMap("<C-k>", "<C-w>k") -- Move to top panel
keyMap("<C-Up>", "<C-w>k") -- Move to top panel
keyMap("<C-l>", "<C-w>l") -- Move to right panel
keyMap("<C-Right>", "<C-w>l") -- Move to right panel


-- Clear search highlights
keyMap("<leader>nh", ":nohlsearch<CR>") -- Clear search highlights