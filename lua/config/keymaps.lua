-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.api.nvim_create_user_command("PrintFileDir", function()
  print(vim.fn.expand("%:p:h"))
end, {})

vim.api.nvim_create_user_command("PrintFileDirClipboard", function()
  local dir = vim.fn.expand("%:p:h")
  -- Print the directory
  print("Current file directory: " .. dir)
  -- Copy it to the clipboard
  vim.fn.setreg("+", dir)
end, {})
