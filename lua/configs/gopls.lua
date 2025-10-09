return {
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
    },
  },
  root_dir = function(fname)
    return vim.fs.root(fname, { "go.work", "go.mod", ".git" })
  end,
}
