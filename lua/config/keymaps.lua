-- Keymaps configuration
local map = vim.keymap.set

-----------------------------------------------------------------------------------
----------------------------------- VISUAL ----------------------------------------
-----------------------------------------------------------------------------------
-- Neotree toggle
map("n", "<leader>e", ":Neotree toggle<CR>", { silent = true, desc = "Toggle Neotree" })

-- Panel navigation
map("n", "<C-S-h>", "<C-w>h",       { desc = "Move to left panel" })
map("n", "<C-S-Left>", "<C-w>h",    { desc = "Move to left panel" })
map("n", "<C-S-l>", "<C-w>l",       { desc = "Move to right panel" })
map("n", "<C-S-Right>", "<C-w>l",   { desc = "Move to right panel" })
map("n", "<C-S-j>", "<C-w>j",       { desc = "Move to down panel" })
map("n", "<C-S-Down>", "<C-w>j",    { desc = "Move to down panel" })
map("n", "<C-S-k>", "<C-w>k",       { desc = "Move to up panel" })
map("n", "<C-S-Up>", "<C-w>k",      { desc = "Move to up panel" })

-- Resize panels
map("n", "<C-A-S-Up>", "<cmd>resize +2<cr>",             { desc = "Increase Window Height" })
map("n", "<C-A-S-Down>", "<cmd>resize -2<cr>",           { desc = "Decrease Window Height" })
map("n", "<C-A-S-Left>", "<cmd>vertical resize -2<cr>",  { desc = "Decrease Window Width" })
map("n", "<C-A-S-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Tab navigation
map("n", "<C-Right>", ":tabnext<CR>", { silent = true, desc = "Next Tab" })
map("n", "<C-Left>", ":tabprev<CR>",  { silent = true, desc = "Previous Tab" })

-- Buffers navigation
map("n", "<S-l>", ":bnext<CR>",         { silent = true, desc = "Next Buffer" })
map("n", "<S-Right>", ":bnext<CR>",     { silent = true, desc = "Next Buffer" })
map("n", "<S-h>", ":bprevious<CR>",     { silent = true, desc = "Previous Buffer" })
map("n", "<S-Left>", ":bprevious<CR>",  { silent = true, desc = "Previous Buffer" })

-- floating terminal
map("n", "<leader>ft", function() Snacks.terminal(nil, { cwd = LazyVim.root() }) end, { desc = "Terminal " })
map({"n","t"}, "<c-`>",function() Snacks.terminal() end, { desc = "Terminal " })

---------------------------------------------------------------------------------------------------
--------------------------------------------- EDITING ---------------------------------------------
---------------------------------------------------------------------------------------------------
-- Move Lines (n, i, v modes)
map("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==",        { desc = "Move Down" })
map("n", "<A-Down>", "<cmd>execute 'move .+' . v:count1<cr>==",     { desc = "Move Down" })
map("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==",  { desc = "Move Up" })
map("n", "<A-Up>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })

map("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi",    { desc = "Move Down" })
map("i", "<A-Down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi",    { desc = "Move Up" })
map("i", "<A-Up>", "<esc><cmd>m .-2<cr>==gi",   { desc = "Move Up" })

map("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv",        { desc = "Move Down" })
map("v", "<A-Down>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv",     { desc = "Move Down" })
map("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv",  { desc = "Move Up" })
map("v", "<A-Up>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })

-- Search word under cursor
map({"n", "x"}, "gw", "*N", { desc = "Search word under cursor" })

-- Format code
map({"n", "x"}, "<leader>cf", function()
    vim.lsp.buf.format()
end, { desc = "Format code" })    

-- Navigate wrapped lines
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Add undo break-points
map("i", ",", ",<c-g>u")
map("i", ".", ".<c-g>u")
map("i", ";", ";<c-g>u")

-- better indenting
map("x", "<", "<gv")
map("x", ">", ">gv")

---------------------------------------------------------------------------------------------------
------------------------------------- SEARCHING / MOVEMENT ----------------------------------------
---------------------------------------------------------------------------------------------------
-- Clear search highlight
-- map("n", "<leader>nh", ":nohlsearch<CR>", { desc = "Clear search highlight" })
map("n", "<esc>", ":nohlsearch<CR>", {silent = true, desc = "Clear search highlight" })

-- Saner behavior of n and N
map("n", "n", "'Nn'[v:searchforward].'zv'", { expr = true, desc = "Next Search Result" })
map("n", "N", "'nN'[v:searchforward].'zv'", { expr = true, desc = "Prev Search Result" })
map("x", "n", "'Nn'[v:searchforward]",      { expr = true, desc = "Next Search Result" })
map("x", "N", "'nN'[v:searchforward]",      { expr = true, desc = "Prev Search Result" })
map("o", "n", "'Nn'[v:searchforward]",      { expr = true, desc = "Next Search Result" })
map("o", "N", "'nN'[v:searchforward]",      { expr = true, desc = "Prev Search Result" })



----------------------------------------------------------------------------------------------------
----------------------------------------- MISCELLANEOUS --------------------------------------------
----------------------------------------------------------------------------------------------------
-- save file
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- lazy
map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })




-- To unmap a keybinding, use the following line:
-- vim.keymap.del("n", "<leader>e")
