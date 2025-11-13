-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.snacks_animate = false
-- vim.opt.hidden = false

-- Highlight the 80th column
vim.opt.colorcolumn = "80"
vim.cmd([[highlight ColorColumn ctermbg=lightgrey guibg=lightgrey]])
