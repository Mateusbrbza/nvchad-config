-- UI and visual enhancement mappings
local M = {}

M.setup = function()
  local map = vim.keymap.set

  -- This worked well on macs butl lags a lot on linux, so I'm disabling it for now
  -- Smear cursor toggle
  -- map("n", "<leader>usm", function()
  --   require("smear_cursor").toggle()
  -- end, { desc = "Toggle Smear Cursor" })
end

return M
