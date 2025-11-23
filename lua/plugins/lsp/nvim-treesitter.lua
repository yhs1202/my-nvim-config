-- doc: https://github.com/nvim-treesitter/nvim-treesitter
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",

    config = function()
        local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

        -- SystemVerilog parser
        parser_config.systemverilog = {
            install_info = {
                url = "https://github.com/gmlarumbe/tree-sitter-systemverilog",
                files = { "src/parser.c" },
                branch = "master",
            },
            filetype = "systemverilog",
        }

        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {
                "c",
                "bash",
                "tcl",
                "make",
                "asm",
                "disassembly",
                "python",
                "gitcommit",
                "systemverilog",
            },

            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}