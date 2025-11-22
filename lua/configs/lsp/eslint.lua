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
    codeActionOnSave = { 
      enable = true, 
      mode = "all" 
    },
    workingDirectories = {
      mode = "auto",
    },
  },
  root_dir = function(fname)
    local lspconfig = require("lspconfig")
    return lspconfig.util.root_pattern(
      ".eslintrc",
      ".eslintrc.js",
      ".eslintrc.cjs",
      ".eslintrc.yaml",
      ".eslintrc.yml",
      ".eslintrc.json",
      "eslint.config.js",
      "eslint.config.mjs",
      "eslint.config.cjs",
      "package.json"
    )(fname) or lspconfig.util.find_git_ancestor(fname)
  end,
}
