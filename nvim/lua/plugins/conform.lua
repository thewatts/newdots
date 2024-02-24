return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        -- disabling, for now - waiting on: https://github.com/nebulab/erb-formatter/issues/47
        -- eruby = { "erb_formatter" },
        html = { "prettier" },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      },
      formatters = {
        erb_formatter = {
          command = "erb-format",
          args = { "--stdin" },
        }
      }
    })
  end,
}
