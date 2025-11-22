-- doc: https://github.com/windwp/nvim-autopairs
return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = function()
    local npairs = require("nvim-autopairs")
    npairs.setup({})

    local rule = require("nvim-autopairs.rule")

    -- Verilog / SystemVerilog: remove ` and ' autopairs
    npairs.remove_rule("`", "verilog")
    npairs.remove_rule("'", "verilog")

    npairs.remove_rule("`", "systemverilog")
    npairs.remove_rule("'", "systemverilog")
  end,
}