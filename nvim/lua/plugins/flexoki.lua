return {
	{
		"kepano/flexoki-neovim",
		priority = 1000, -- Make sure to load this before all the other start plugins.
		name = "flexoki",
		init = function()
			vim.cmd("colorscheme flexoki-dark")
		end,
	},
}
