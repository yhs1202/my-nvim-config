-- doc: https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim
return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  dependencies = { "mason-org/mason.nvim" },

  opts = {
    ensure_installed = {
      "shfmt",    -- Shell script formatter
    },
  },

  config = function(_, opts)
    require("mason-tool-installer").setup(opts)
  end,
}