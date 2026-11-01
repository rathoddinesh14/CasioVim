-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("c", "<Down>", "<C-n>", { desc = "Next command completion" })
vim.keymap.set("c", "<Up>", "<C-p>", { desc = "Previous command completion" })
vim.keymap.set("c", "<Tab>", "<C-n>", { desc = "Next command completion" })
vim.keymap.set("c", "<S-Tab>", "<C-p>", { desc = "Previous command completion" })
