-- doc: https://github.com/mason-org/mason-lspconfig.nvim
return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    { "neovim/nvim-lspconfig" },
    -- neovim 0.11 supports lsp natively
  },

  config = function()
    local mason_lspconfig = require("mason-lspconfig")
    mason_lspconfig.setup({
      ensure_installed = {
        "clangd",   -- C/C++ LSP
        "pyright",  -- Python LSP
        "verible",  -- SystemVerilog LSP
        "lua_ls",   -- Lua LSP
      },
      automatic_installation = true,
    })
  end,
}