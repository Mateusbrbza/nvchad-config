-- Basic navigation and editing mappings
local M = {}

M.setup = function()
  local map = vim.keymap.set

  -- Basic navigation
  map("n", ";", ":", { desc = "CMD enter command mode" })
  map("i", "jk", "<ESC>")
  
  -- File browser
  vim.keymap.set("n", "<leader>fp", ":Telescope file_browser<CR>")
  
  -- Dashboard
  map("n", "<leader>db", "<cmd>Nvdash<CR>", { desc = "Open Dashboard" })
end

return M
