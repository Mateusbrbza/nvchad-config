-- Set base46 cache path
vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"

-- Set leader keys BEFORE loading lazy
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- Load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- Load NvChad autocmds
require "nvchad.autocmds"

-- Initialize custom configuration
vim.schedule(function()
  require("config").setup()
end)
