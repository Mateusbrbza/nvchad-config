-- Git related mappings
local M = {}

M.setup = function()
  local map = vim.keymap.set

  -- Git mappings using Snacks
  map("n", "<leader>gb", function() Snacks.picker.git_branches() end, { desc = "Git Branches" })
  map("n", "<leader>gs", function() Snacks.picker.git_status() end, { desc = "Git Status" })
  map("n", "<leader>gS", function() Snacks.picker.git_stash() end, { desc = "Git Stash" })
  map("n", "<leader>gd", function() Snacks.picker.git_diff() end, { desc = "Git Diff (Hunks)" })
  map("n", "<leader>gf", function() Snacks.picker.git_log_file() end, { desc = "Git Log File" })
  map("n", "<leader>gB", function() Snacks.gitbrowse() end, { desc = "Git Browse" })
  map("v", "<leader>gB", function() Snacks.gitbrowse() end, { desc = "Git Browse" })
  map("n", "<leader>gg", function() Snacks.lazygit() end, { desc = "Lazygit" })

  -- Git Blame mappings
  map("n", "<leader>glt", "<cmd>GitBlameToggle<cr>", { desc = "Git Blame Toggle" })
  map("n", "<leader>gle", "<cmd>GitBlameEnable<cr>", { desc = "Git Blame Enable" })
  map("n", "<leader>gld", "<cmd>GitBlameDisable<cr>", { desc = "Git Blame Disable" })
  map("n", "<leader>glc", "<cmd>GitBlameCopySHA<cr>", { desc = "Git Blame Copy SHA" })
  map("n", "<leader>glu", "<cmd>GitBlameOpenCommitURL<cr>", { desc = "Git Blame Open Commit URL" })
  map("n", "<leader>glf", "<cmd>GitBlameOpenFileURL<cr>", { desc = "Git Blame Open File URL" })
  map("n", "<leader>glF", "<cmd>GitBlameCopyFileURL<cr>", { desc = "Git Blame Copy File URL" })
  map("n", "<leader>glU", "<cmd>GitBlameCopyCommitURL<cr>", { desc = "Git Blame Copy Commit URL" })
end

return M
