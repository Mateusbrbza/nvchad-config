-- Git related mappings
local M = {}

M.setup = function()
  local map = vim.keymap.set

  -- Git mappings using Snacks
  map("n", "<leader>gb", function() Snacks.picker.git_branches() end, { desc = "Git Branches" })
  map("n", "<leader>gl", function() Snacks.picker.git_log() end, { desc = "Git Log" })
  map("n", "<leader>gL", function() Snacks.picker.git_log_line() end, { desc = "Git Log Line" })
  map("n", "<leader>gs", function() Snacks.picker.git_status() end, { desc = "Git Status" })
  map("n", "<leader>gS", function() Snacks.picker.git_stash() end, { desc = "Git Stash" })
  map("n", "<leader>gd", function() Snacks.picker.git_diff() end, { desc = "Git Diff (Hunks)" })
  map("n", "<leader>gf", function() Snacks.picker.git_log_file() end, { desc = "Git Log File" })
  map("n", "<leader>gB", function() Snacks.gitbrowse() end, { desc = "Git Browse" })
  map("v", "<leader>gB", function() Snacks.gitbrowse() end, { desc = "Git Browse" })
  map("n", "<leader>gg", function() Snacks.lazygit() end, { desc = "Lazygit" })
end

return M
