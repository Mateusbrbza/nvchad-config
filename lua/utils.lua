-- Utility functions and helpers
local M = {}

-- Table utilities
M.tbl_merge = function(...)
  return vim.tbl_deep_extend("force", ...)
end

M.tbl_contains = function(tbl, value)
  for _, v in ipairs(tbl) do
    if v == value then
      return true
    end
  end
  return false
end

-- String utilities
M.str_trim = function(str)
  return str:match("^%s*(.-)%s*$")
end

-- Buffer utilities
M.buf_get_visual_selection = function()
  local s_start = vim.fn.getpos("'<")
  local s_end = vim.fn.getpos("'>")
  local n_lines = math.abs(s_end[2] - s_start[2]) + 1
  local lines = vim.api.nvim_buf_get_lines(0, s_start[2] - 1, s_end[2], false)
  lines[1] = string.sub(lines[1], s_start[3], -1)
  if n_lines == 1 then
    lines[n_lines] = string.sub(lines[n_lines], 1, s_end[3] - s_start[3] + 1)
  else
    lines[n_lines] = string.sub(lines[n_lines], 1, s_end[3])
  end
  return table.concat(lines, "\n")
end

-- File utilities
M.file_exists = function(path)
  local f = io.open(path, "r")
  if f then
    f:close()
    return true
  end
  return false
end

-- Notification utilities
M.notify = function(message, level)
  vim.notify(message, level or vim.log.levels.INFO)
end

M.notify_success = function(message)
  M.notify(message, vim.log.levels.INFO)
end

M.notify_warn = function(message)
  M.notify(message, vim.log.levels.WARN)
end

M.notify_error = function(message)
  M.notify(message, vim.log.levels.ERROR)
end

-- LSP utilities
M.lsp_get_client = function(name)
  for _, client in ipairs(vim.lsp.get_active_clients()) do
    if client.name == name then
      return client
    end
  end
  return nil
end

-- Git utilities
M.git_get_branch = function()
  local handle = io.popen("git branch --show-current 2>/dev/null")
  if handle then
    local result = handle:read("*a")
    handle:close()
    return M.str_trim(result)
  end
  return nil
end

return M
