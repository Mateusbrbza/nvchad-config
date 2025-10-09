-- Custom autocmds module
local M = {}

-- Auto-remove trailing whitespace on save
M.setup_trailing_whitespace = function()
  vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = { "*" },
    callback = function()
      local save_cursor = vim.fn.getpos(".")
      pcall(function() vim.cmd [[%s/\s\+$//e]] end)
      vim.fn.setpos(".", save_cursor)
    end,
  })
end

-- Ensure nvdash shows on startup
M.setup_dashboard = function()
  vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
      -- Only show dashboard if no files were opened
      if vim.fn.argc() == 0 and vim.fn.line2byte("$") == -1 then
        vim.defer_fn(function()
          -- Double check we still don't have any content
          if vim.api.nvim_buf_get_lines(0, 0, 1, false)[1] == "" then
            require("nvchad.nvdash").open()
          end
        end, 10) -- Small delay to ensure everything is loaded
      end
    end,
  })
end

-- Setup filetype detection for config files
M.setup_filetype_detection = function()
  vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = { ".env", ".config" },
    callback = function()
      vim.bo.filetype = "sh" -- or "ini", "toml", etc. as appropriate
    end,
  })
end

-- Prevent Stylua from being started as LSP (it's only a formatter)
M.setup_stylua_prevention = function()
  vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
      local client = vim.lsp.get_client_by_id(args.data.client_id)
      if client and client.name == "stylua" then
        vim.lsp.stop_client(client.id)
        vim.notify("Stylua LSP disabled - use conform.nvim for formatting", vim.log.levels.WARN)
      end
    end,
  })
end

-- Initialize all autocmds
M.setup = function()
  M.setup_trailing_whitespace()
  M.setup_dashboard()
  M.setup_filetype_detection()
  M.setup_stylua_prevention()
end

return M
