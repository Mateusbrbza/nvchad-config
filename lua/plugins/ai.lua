-- AI and Code Completion plugins
return {
  {
    "github/copilot.vim",
    lazy = false,
    enabled = true,
    opts = {
      panel = {
        auto_refresh = true,
        layout = {
          position = "right",
          ratio = 0.3,
        },
      },
      suggestion = {
        auto_trigger = true,
        keymap = {
          accept = "<C-l>",
        },
      },
    },
    config = function()
      -- Mapping tab is already used by NvChad
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true
      vim.g.copilot_tab_fallback = ""
    end,
  },

  {
    "yetone/avante.nvim",
    build = "make",
    event = "VeryLazy",
    lazy = false,
    version = false,
    ---@module 'avante'
    ---@type avante.Config
    opts = function()
      local function load_env()
        local env_file = vim.fn.expand("~/.config/nvim/.env")
        if vim.fn.filereadable(env_file) == 1 then
          local lines = vim.fn.readfile(env_file)
          for _, line in ipairs(lines) do
            if line:match("^%s*AVANTE_OPENAI_API_KEY%s*=") then
              local key = line:match("AVANTE_OPENAI_API_KEY%s*=%s*(.+)")
              if key then
                vim.env.OPENAI_API_KEY = key
              end
            end
          end
        end
      end

      load_env()

      return {
        instructions_file = "avante.md",
        provider = "copilot",
        providers = {
          -- auto_suggestions_provider = "copilot",
          copilot = {
            enabled = true,
            model = "claude-sonnet-4"
          },
        },
      }
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below dependencies are optional,
      "nvim-mini/mini.pick",           -- for file_selector provider mini.pick
      "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
      "hrsh7th/nvim-cmp",              -- autocompletion for avante commands and mentions
      "ibhagwan/fzf-lua",              -- for file_selector provider fzf
      "stevearc/dressing.nvim",        -- for input provider dressing
      "folke/snacks.nvim",             -- for input provider snacks
      "nvim-tree/nvim-web-devicons",   -- or echasnovski/mini.icons
      "zbirenbaum/copilot.lua",        -- for providers='copilot'
      {
        -- Make sure to set this up properly if you have lazy=true
        'MeanderingProgrammer/render-markdown.nvim',
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },
}
