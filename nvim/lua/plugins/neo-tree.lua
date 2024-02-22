local keymap = vim.keymap

return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    "s1n7ax/nvim-window-picker",
  },
  config = function()
    keymap.set("n", "<C-b>", ":Neotree filesystem toggle left<CR>", {})
    keymap.set("n", "<Leader>f", ":Neotree reveal<CR>", {})

    require("neo-tree").setup({
      event_handlers = {
        {
          event = "file_opened",
          handler = function() -- file_path is the argument
            --auto close
            require("neo-tree").close_all()
          end,
        },
      },
    })
  end,
}
