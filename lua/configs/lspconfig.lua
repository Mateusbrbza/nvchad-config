-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local nvlsp = require "nvchad.configs.lspconfig"

-- Import modular LSP configurations
local ts_config = require "configs.lsp.typescript"
local eslint_config = require "configs.lsp.eslint"
local tailwindcss_config = require "configs.lsp.tailwindcss"
local html_config = require "configs.lsp.html"

-- Setup LSP configurations
vim.lsp.config.ts_ls = ts_config
vim.lsp.config.eslint = eslint_config
vim.lsp.config.tailwindcss = tailwindcss_config
vim.lsp.config.html = html_config

-- Setup gopls with custom config
vim.lsp.config.gopls = vim.tbl_deep_extend("force", require "configs.gopls", {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
})
