-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Center on page up" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Center on page down" })
vim.keymap.set({ "n", "x", "o" }, "L", "$", { desc = "Move to the end of the line" })
vim.keymap.set({ "n", "x", "o" }, "H", "^", { desc = "Move to the beginning of the line" })
