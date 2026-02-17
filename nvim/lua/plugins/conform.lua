return {
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		keys = {
			{
				"<leader>f",
				function()
					require("conform").format {
						async = true,
						lsp_format = "fallback",
					}
				end,
				mode = "",
				desc = "[F]ormat buffer",
			},
		},
		config = function()
			require("conform").setup({
				notify_on_error = false,
				formatters_by_ft = {
					lua = { "lua-format" },
					javascript = { "eslint_d", "prettierd" },
					javascriptreact = { "eslint_d", "prettierd" },
					css = { "prettierd" },
				},
				format_on_save = { timeout_ms = 500, lsp_format = "fallback" },
			})
		end,
	},
}
