-- AI and Copilot mappings
local M = {}

M.setup = function()
  local map = vim.keymap.set

  -- Copilot accept
  map("i", "<C-l>", function()
    vim.fn.feedkeys(vim.fn["copilot#Accept"](), "n")
  end, { desc = "Copilot accept" })
end

return M
