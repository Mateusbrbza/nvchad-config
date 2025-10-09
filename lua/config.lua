-- Main configuration module
local M = {}

-- Configuration modules
local autocmds = require "autocmds"
local utils = require "utils"

-- Initialize configuration
M.setup = function()
  -- Setup autocmds
  autocmds.setup()
  
  -- Load theme
  dofile(vim.g.base46_cache .. "defaults")
  dofile(vim.g.base46_cache .. "statusline")
  
  -- Load options and mappings
  require "options"
  require "mappings"
  
  -- Enable termguicolors
  vim.o.termguicolors = true
end

return M
