-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- run tmux-sessionizer after pressing <leader>fp
vim.keymap.set("n", "<leader>fp", function()
  LazyVim.terminal("tmux-sessionizer")
end, { desc = "tmux-sessionizer" })
