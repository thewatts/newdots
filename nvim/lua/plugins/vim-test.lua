local keymap = vim.keymap

return {
  "janko/vim-test",
  config = function()
    -- Setting Variables
    vim.g["test#neovim#term_position"] = "bel"
    vim.g["test#ruby#use_spring_binstub"] = 1
    vim.g["test#preserve_screen"] = 1

    keymap.set("n", "<leader>s", ":TestNearest<CR>", { silent = true })
    keymap.set("n", "<leader>t", ":TestFile<CR>", { silent = true })
    keymap.set("n", "<leader>a", ":TestSuite<CR>", { silent = true })
    keymap.set("n", "<leader>g", ":TestVisit<CR>", { silent = true })

    keymap.set("n", "<CR>", ":TestLast<CR>", { silent = true })
  end,
}
