-- Folding mappings
local M = {}

M.setup = function()
  local map = vim.keymap.set

  -- Folding mappings
  map("n", "zc", "zc", { desc = "Close fold" })
  map("n", "zo", "zo", { desc = "Open fold" })
  map("n", "za", "za", { desc = "Toggle fold" })
  map("n", "zC", "zC", { desc = "Close all folds under cursor" })
  map("n", "zO", "zO", { desc = "Open all folds under cursor" })
  map("n", "zM", "zM", { desc = "Close all folds" })
  map("n", "zR", "zR", { desc = "Open all folds" })
  map("n", "zm", "zm", { desc = "Fold more" })
  map("n", "zr", "zr", { desc = "Fold less" })
  map("n", "<leader>z", "za", { desc = "Toggle fold" })
end

return M
