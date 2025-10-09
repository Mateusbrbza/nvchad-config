-- Main plugins configuration - imports modular plugin configurations
return {
  -- Import modular plugin configurations
  { import = "plugins.ai" },
  { import = "plugins.development" },
  { import = "plugins.treesitter" },
  { import = "plugins.utilities" },
}
