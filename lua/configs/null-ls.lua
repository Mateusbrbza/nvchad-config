local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require("null-ls")

-- Helper function to check if command exists
local function command_exists(command)
  return vim.fn.executable(command) == 1
end

-- Build sources array conditionally
local sources = {}

-- Add prettierd if available, otherwise use prettier
if command_exists("prettierd") then
  table.insert(sources, null_ls.builtins.formatting.prettierd.with({ prefer_local = "node_modules/.bin" }))
elseif command_exists("prettier") then
  table.insert(sources, null_ls.builtins.formatting.prettier.with({ prefer_local = "node_modules/.bin" }))
end

-- Add Go formatters if available
if command_exists("goimports-reviser") then
  table.insert(sources, null_ls.builtins.formatting.goimports_reviser)
end

if command_exists("gofmt") then
  table.insert(sources, null_ls.builtins.formatting.gofmt)
end

if command_exists("golangci-lint") then
  table.insert(sources, null_ls.builtins.diagnostics.golangci_lint)
end

if command_exists("golines") then
  table.insert(sources, null_ls.builtins.formatting.golines)
end

local opts = {
  sources = sources,
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({
        group = augroup,
        buffer = bufnr,
      })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end
  end,
}
return opts
