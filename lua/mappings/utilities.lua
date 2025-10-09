-- Utility mappings
local M = {}

M.setup = function()
  local map = vim.keymap.set

  -- File operations
  map("n", "<leader>cR", function() Snacks.rename.rename_file() end, { desc = "Rename File" })
end

return M
