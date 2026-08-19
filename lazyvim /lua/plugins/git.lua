return {
	{
		"lewis6991/gitsigns.nvim",
		opts = {
			signcolumn = true, -- The colored bar on the left
			numhl = false, -- Highlights the line number
			linehl = false, -- Highlights the whole line
			word_diff = true, -- Shows exactly which words changed (inline)
			watch_gitdir = { interval = 1000, follow_files = true },
			current_line_blame = true, -- The "Ghost Text" showing who wrote the line

			-- THIS IS WHAT YOU SEE IN YOUR SCREENSHOT
			-- show_deleted = true, -- Shows deleted lines inline
		},
	},
}