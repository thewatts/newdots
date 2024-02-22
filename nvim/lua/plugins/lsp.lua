local keymap = vim.keymap

return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "tsserver", "ruby_ls", "standardrb" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.ruby_ls.setup({})
      lspconfig.standardrb.setup({})
      -- lspconfig.erblint.setup({})

      keymap.set("n", "<Leader>k", vim.lsp.buf.hover, {})
      keymap.set("n", "gd", vim.lsp.buf.definition, {})
      keymap.set({ "n", "v" }, "<Leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
