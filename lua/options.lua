require "nvchad.options"

-- Import custom autocmds
local autocmds = require "autocmds"

-- add yours here!
local opts = {}
opts["scope"] = "global"

-- vim.opt.relativenumber = true
vim.api.nvim_set_option_value("colorcolumn", "90", opts)

vim.opt.number = true
vim.opt.relativenumber = true

-- Folding configuration
-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- vim.opt.foldenable = false  -- Start with folds open
-- vim.opt.foldlevel = 99      -- Open all folds by default
-- vim.opt.foldlevelstart = 99 -- Start with all folds open

-- Setup custom autocmds
autocmds.setup()
