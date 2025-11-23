return {
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local null_ls = require("null-ls")

      opts.sources = opts.sources or {}

      -- Verible for SystemVerilog linting and formatting
      local verible_lint = {
        method = null_ls.methods.DIAGNOSTICS,
        filetypes = { "verilog", "systemverilog" },
        generator = null_ls.generator({
          command = "verible-verilog-lint",
          args = { "--parse_fatal", "--rules", "all", "--stdin_filename", "$FILENAME", "-" },
          to_stdin = true,
          from_stderr = true,
          format = "line",
          on_output = function(line)
            local row, col, message = line:match(":(%d+):(%d+): (.*)")
            if row and col and message then
              return {
                row = tonumber(row),
                col = tonumber(col),
                message = message,
                severity = vim.diagnostic.severity.WARN,
              }
            end
          end,
        }),
      }

      local verible_format = {
        method = null_ls.methods.FORMATTING,
        filetypes = { "verilog", "systemverilog" },
        generator = null_ls.formatter({
          command = "verible-verilog-format",
          args = { "--stdin_filename", "$FILENAME" },
          to_stdin = true,
        }),
      }

      vim.list_extend(opts.sources, {
        verible_lint,
        verible_format,
      })
    end,
  },
}