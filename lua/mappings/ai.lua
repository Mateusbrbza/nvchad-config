-- AI and Copilot mappings
local M = {}

M.setup = function()
  local map = vim.keymap.set

  -- Copilot accept
  map("i", "<C-l>", function()
    vim.fn.feedkeys(vim.fn["copilot#Accept"](), "n")
  end, { desc = "Copilot accept" })

  -- Claude Code mappings
  -- map("n", "<leader>ac", "<cmd>ClaudeCode<cr>", { desc = "Toggle Claude" })
  -- map("n", "<leader>af", "<cmd>ClaudeCodeFocus<cr>", { desc = "Focus Claude" })
  -- map("n", "<leader>ar", "<cmd>ClaudeCode --resume<cr>", { desc = "Resume Claude" })
  -- map("n", "<leader>aC", "<cmd>ClaudeCode --continue<cr>", { desc = "Continue Claude" })
  -- map("n", "<leader>am", "<cmd>ClaudeCodeSelectModel<cr>", { desc = "Select Claude model" })
  -- map("n", "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>", { desc = "Add current buffer" })
  -- map("v", "<leader>as", "<cmd>ClaudeCodeSend<cr>", { desc = "Send to Claude" })
  -- map("n", "<leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>", { desc = "Accept diff" })
  -- map("n", "<leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>", { desc = "Deny diff" })
  --
  -- -- Window navigation from terminal (Claude Code panel) — uses TmuxNavigator commands
  -- map("t", "<C-h>", "<C-\\><C-n><cmd>TmuxNavigateLeft<cr>", { desc = "Navigate left from terminal" })
  -- map("t", "<C-j>", "<C-\\><C-n><cmd>TmuxNavigateDown<cr>", { desc = "Navigate down from terminal" })
  -- map("t", "<C-k>", "<C-\\><C-n><cmd>TmuxNavigateUp<cr>", { desc = "Navigate up from terminal" })
  -- map("t", "<C-l>", "<C-\\><C-n><cmd>TmuxNavigateRight<cr>", { desc = "Navigate right from terminal" })
end

return M
