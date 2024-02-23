-- auto strip whitespace on save
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function()
		-- Use Lua's vim.cmd to execute the Ex command for substitution
		cmd([[%s/\s\+$//e]])
	end,
})

require("watts.git")
