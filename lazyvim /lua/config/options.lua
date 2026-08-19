-- Standard Options
vim.opt.clipboard = "unnamedplus"

if vim.fn.executable("xclip") == 1 then
    vim.g.clipboard = {
        name = "xclip-utils",
        copy = {
            ["+"] = "xclip -selection clipboard",
            ["*"] = "xclip -selection primary",
        },
        paste = {
            ["+"] = "xclip -selection clipboard -o",
            ["*"] = "xclip -selection primary -o",
        },
        cache_enabled = 1,
    }
end

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true

vim.g.snacks_animate = false

vim.opt.smoothscroll = false

vim.opt.linespace = 6
vim.o.guifont = "JetBrainsMono Nerd Font:h14"

vim.g.autoformat = false

if vim.g.neovide then
  -- This only runs when Neovide starts
  vim.o.guifont = "JetBrainsMono Nerd Font:h14" 
end