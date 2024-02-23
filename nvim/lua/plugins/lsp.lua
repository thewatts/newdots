return {
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"bash-language-server",
				"json-lsp",
				"lua-language-server",
				"ruby-lsp",
				"shellcheck",
				"shfmt",
				"standardrb",
				"stylua",
				"tailwindcss-language-server",
				"typescript-language-server",
				"yaml-language-server",
			},
		},

		PATH = "append",
	},

	{
		"folke/neoconf.nvim",

		dependencies = {
			{ "neovim/nvim-lspconfig" },
			{ "ryansch/neoconf-lspcmd" },
			{ "nvim-lua/plenary.nvim" },
		},

		opts = function(_, opts)
			opts.plugins = vim.tbl_extend("force", opts.plugins or {}, {
				lspcmd = {
					enabled = true,
					log_level = "info",
					ls_mappings = {
						ruby_ls = "rubyLsp",
						standardrb = "standardRuby",
						yamlls = "yaml",
					},
				},
			})
		end,

		config = function(_, opts)
			require("neoconf").setup(opts)
			require("neoconf.plugins").register(require("neoconf-lspcmd"))
		end,
	},
}
