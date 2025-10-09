-- LSP related mappings
local M = {}

M.setup = function()
  local map = vim.keymap.set

  -- LSP mappings using Snacks
  map("n", "gd", function() Snacks.picker.lsp_definitions() end, { desc = "Goto Definition" })
  map("n", "gD", function() Snacks.picker.lsp_declarations() end, { desc = "Goto Declaration" })
  map("n", "gr", function() Snacks.picker.lsp_references() end, { desc = "References", nowait = true })
  map("n", "gI", function() Snacks.picker.lsp_implementations() end, { desc = "Goto Implementation" })
  map("n", "gy", function() Snacks.picker.lsp_type_definitions() end, { desc = "Goto T[y]pe Definition" })
  map("n", "<leader>ss", function() Snacks.picker.lsp_symbols() end, { desc = "LSP Symbols" })
  map("n", "<leader>sS", function() Snacks.picker.lsp_workspace_symbols() end, { desc = "LSP Workspace Symbols" })
end

return M
