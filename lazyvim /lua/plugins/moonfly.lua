return {
	{
		"bluz71/vim-moonfly-colors",
		name = "moonfly",
		lazy = false,
		priority = 1000,
		config = function()
			-- Set the colorscheme
			vim.cmd([[colorscheme moonfly]])

			-- Optional: Moonfly specific settings to match your professional look
			vim.g.moonflyTransparent = false -- Set to true if you want your Kitty wallpaper to show through
			vim.g.moonflyItalics = true
		end,
	},
}