local keymap = vim.keymap

return {
  "diepm/vim-rest-console",
  config = function()
    -- remove default mapping for running queries
    vim.g.vrc_set_default_mapping = 0
    -- set default content type to json
    vim.g.vrc_response_default_content_type = "application/json"
    -- set default output buffer name
    vim.g.vrc_output_buffer_name = "_OUTPUT.json"

    -- use jq to pretty format json response
    vim.g.vrc_auto_format_response_patterns = {
      json = "jq",
    }

    -- set keymap to run query
    keymap.set("n", "<Leader>xr", ":call VrcQuery()<CR>", { noremap = true }) -- run Rest query
  end,
}
