local map = vim.keymap.set

-- Your preferred escapes
map("i", "jk", "<Esc>")
map("i", "kj", "<Esc>")
map("v", "jk", "<Esc>")

-- Fast save
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save File" })