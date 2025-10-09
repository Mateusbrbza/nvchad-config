-- UI and visual enhancement mappings
local M = {}

M.setup = function()
  local map = vim.keymap.set

  -- Smear cursor toggle
  map("n", "<leader>usm", function()
    require("smear_cursor").toggle()
  end, { desc = "Toggle Smear Cursor" })
end

return M
