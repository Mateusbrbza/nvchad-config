-- Avante.nvim mappings
local M = {}

M.setup = function()
  local map = vim.keymap.set

  -- Simple avante mappings using commands
  map("n", "<leader>aa", "<cmd>Avante<cr>", { desc = "Avante Chat" })
  map("n", "<leader>at", "<cmd>AvanteToggle<cr>", { desc = "Avante Toggle" })
  
  -- Avante with selection
  map("v", "<leader>aa", "<cmd>Avante<cr>", { desc = "Avante Chat (Selection)" })
  map("v", "<leader>at", "<cmd>AvanteToggle<cr>", { desc = "Avante Toggle (Selection)" })
end

return M