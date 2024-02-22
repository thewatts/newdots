return {
  "rhysd/git-messenger.vim",
  lazy = false,
  config = function()
    vim.keymap.set("n", "<Leader>gm", ":GitMessenger<CR>", {})
  end,
}
