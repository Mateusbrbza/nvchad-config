-- Utility, QoL and helper plugins
return {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  {
    "nvim-lua/plenary.nvim",
  },

  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = function()
      return require "configs.snacks"
    end,
    init = function()
      vim.api.nvim_create_autocmd("User", {
        pattern = "VeryLazy",
        callback = function()
          -- Setup some globals for debugging (lazy-loaded)
          _G.dd = function(...)
            Snacks.debug.inspect(...)
          end
          _G.bt = function()
            Snacks.debug.backtrace()
          end

          -- Create some toggle mappings
          Snacks.toggle.option("spell", { name = "Spelling" }):map("<leader>us")
          Snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>uw")
          Snacks.toggle.option("relativenumber", { name = "Relative Number" }):map("<leader>uL")
          Snacks.toggle.diagnostics():map("<leader>ud")
          Snacks.toggle.line_number():map("<leader>ul")
          Snacks.toggle.option("conceallevel", { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 }):map(
            "<leader>uc")
          Snacks.toggle.treesitter():map("<leader>uT")
          Snacks.toggle.option("background", { off = "light", on = "dark", name = "Dark Background" }):map("<leader>ub")
          Snacks.toggle.inlay_hints():map("<leader>uh")
          Snacks.toggle.indent():map("<leader>ug")
          Snacks.toggle.dim():map("<leader>uD")
        end,
      })
    end,
  },

  {
    "sphamba/smear-cursor.nvim",
    lazy = false,
    opts = {
      -- Smear cursor when switching buffers or windows
      smear_between_buffers = true,

      -- Smear cursor when moving within line or to neighbor lines
      smear_between_neighbor_lines = true,

      -- Draw the smear in buffer space instead of screen space when scrolling
      scroll_buffer_space = true,

      -- Set to true if your font supports legacy computing symbols (block unicode symbols)
      -- Smears will blend better on all backgrounds
      legacy_computing_symbols_support = false,

      -- Smear cursor in insert mode
      smear_insert_mode = true,
    },
  },

  {
    "editorconfig/editorconfig-vim",
    lazy = false,
  },
}
