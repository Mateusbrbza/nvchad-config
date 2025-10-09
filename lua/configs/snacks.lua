local options = {
  bigfile = { enabled = true },
  indent = { enabled = true },
  input = { enabled = true },
  notifier = {
    enabled = true,
    timeout = 5000,
  },
  git = { enabled = true },
  scope = { enabled = true },
  scroll = { enabled = true },
  statuscolumn = { enabled = true },
  -- dashboard = { enabled = true },
  -- explorer = { enabled = true },
  quickfile = { enabled = true },
  -- words = { enabled = true },
  styles = {
    notification = {
      -- wo = { wrap = true } -- Wrap notifications
    }
  }
}

return options
