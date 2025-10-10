-- Git Blame configuration
return function()
  require('gitblame').setup({
    -- Enable git blame by default
    enabled = true,
    
    -- Message template for blame info
    -- Available placeholders: {hash}, {author}, {date}, {summary}
    message_template = " {author} • {date} • {summary}",
    
    -- Date format for blame info
    -- %r = relative date (e.g., 3 days ago)
    -- %c = date and time (e.g., 09/16/98 23:48:10)
    date_format = "%r",
    
    -- Message when not committed yet
    message_when_not_committed = " Not Committed Yet",
    
    -- Highlight group for virtual text
    highlight_group = "Comment",
    
    -- Virtual text enabled
    display_virtual_text = true,
    
    -- Ignore certain filetypes
    ignored_filetypes = {},
    
    -- Visual delay for displaying blame info (in milliseconds)
    delay = 250,
    
    -- Start virtual text at column (nil = end of line)
    virtual_text_column = nil,
    
    -- Better performance settings
    schedule_event = "CursorMoved",
    clear_event = "CursorMovedI",
    
    -- Use blame commit file URLs
    use_blame_commit_file_urls = false,
    
    -- Set displayed commit summary length (0 = full length)
    max_commit_summary_length = 0,
    
    -- Clipboard register for copy commands
    clipboard_register = "+",
    
    -- Remote forge domains (for self-hosted instances)
    remote_domains = {
      -- Example: ["git.sr.ht"] = "sourcehut"
    },
  })
end
