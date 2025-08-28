-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<cr>", "zz", { desc = "Centralize screen" })

vim.keymap.set("n", "<leader>th", function()
  vim.cmd([[ToggleTerm]])
end, { desc = "Open terminal" })

vim.keymap.set({ "t" }, "<esc><esc>", "<C-\\><C-n>", { desc = "Quite terminal mode" })

local neocodeium = require("neocodeium")
vim.keymap.set("i", "<M-f>", neocodeium.accept, { desc = "Accept suggestion" })
vim.keymap.set("i", "<M-]>", neocodeium.cycle_or_complete, { desc = "Go to next suggestion" })

-- Keymaps Doc
-- <C-e> hide blink cmp menu
-- Tab accept suggestion
