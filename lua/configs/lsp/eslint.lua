-- ESLint LSP configuration
local nvlsp = require "nvchad.configs.lspconfig"

return {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    packageManager = "npm",
    rulePaths = {},
    useESLintClass = false,
    experimental = { useFlatConfig = false },
    codeActionOnSave = { enable = true, mode = "all" },
  },
}
