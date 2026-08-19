-- Bootstrap lazy.nvim (Keep this part as is)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Initialize LazyVim
require("lazy").setup({
	spec = {
		{ "LazyVim/LazyVim", import = "lazyvim.plugins" },
		-- Import language extras
		{ import = "lazyvim.plugins.extras.lang.ruby" },
		{ import = "lazyvim.plugins.extras.lang.java" },
		{ import = "lazyvim.plugins.extras.lang.json" },
		-- This line imports everything in your lua/plugins/ folder
		{ import = "plugins" },
	},
	defaults = {
		autocmds = true,
		keymaps = true,
	},
})

-- LazyVim automatically loads lua/config/options.lua and lua/config/keymaps.lua
-- at the right time. You don't need to manually require them.