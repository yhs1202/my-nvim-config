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
    -- local mason_lspconfig = require("mason-lspconfig")
    -- local lspconfig = require("lspconfig")
    
    -- for _, server in ipairs(mason_lspconfig.get_installed_servers()) do
    --   if lspconfig[server] ~= nil then
    --     lspconfig[server].setup({})
    --   end
    -- end
  end,
}