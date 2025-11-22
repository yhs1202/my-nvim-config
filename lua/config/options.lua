local options = {
  -- Visual
  number = true,                          -- Show absolute line numbers
  relativenumber = true,                  -- Enable relative line numbers
  termguicolors = true,                   -- Enable 24-bit true color support
  signcolumn = "yes",                     -- Always show the sign column (e.g., for diagnostics, git)

  -- Tabs and indentation
  tabstop = 2,                            -- Number of spaces a <Tab> in the file counts for
  shiftwidth = 2,                         -- Number of spaces used for each indentation level
  smartindent = true,                     -- Enable smart indentation for new lines
  wrap = false,                           -- Disable line wrapping (long lines stay on one line)
  expandtab = true,                       -- Convert tabs to spaces
  numberwidth = 2,                        -- Width of the number column (left side)
  cursorline = true,                      -- Highlight the current line
  sidescrolloff = 8,                      -- Minimum columns to keep left/right of cursor during horizontal scroll

  -- Searching
  incsearch = true,                       -- Show search matches while typing
  ignorecase = true,                      -- Ignore case in searches...
  smartcase = true,                       -- ...unless the search pattern contains uppercase letters
  hlsearch = true,                        -- Highlight all matches for the previous search pattern

  -- Encoding and command UI
  encoding = "UTF-8",                     -- Default file encoding (should be "utf-8", lowercase is conventional)
  cmdheight = 1,                          -- Height of the command line area
  scrolloff = 10,                         -- Keep at least 10 lines visible above and below the cursor
  mouse = "a",                            -- Enable mouse support in all modes

  -- File handling
  backup = true,                          -- Enable backup files (creates filename~)
  writebackup = false,                    -- Don’t create backup before overwriting a file
  swapfile = false,                       -- Disable swap files
  undofile = true,                        -- Enable persistent undo history

  -- Clipboard & completion
  clipboard = "unnamedplus",              -- Use system clipboard for copy/paste
  completeopt = { "menuone", "noselect" },-- Better completion experience
  pumheight = 10,                         -- Maximum height of the popup menu

  -- UI behavior
  conceallevel = 0,                       -- Show concealed text (useful for markdown/backticks)
  showmode = true,                        -- Show mode (like --INSERT--) since statusline handles it
  showtabline = 2,                        -- Always show tabline (top bar with buffers/tabs)
  splitbelow = true,                      -- New horizontal splits open below
  splitright = true,                      -- New vertical splits open to the right

  -- Performance
  timeoutlen = 500,                       -- Time (ms) to wait for mapped key sequence
  updatetime = 300,                       -- Time (ms) before triggering CursorHold events (affects diagnostics refresh speed)
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- Set shell to PowerShell on Windows for better compatibility
if vim.loop.os_uname().sysname == "Windows_NT" then
  vim.o.shell = [["C:/Program Files/Git/bin/bash.exe"]]
  vim.o.shellcmdflag = "-c"
  vim.o.shellquote = ""
  vim.o.shellxquote = ""
end
