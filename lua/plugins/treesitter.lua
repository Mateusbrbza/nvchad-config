-- Treesitter and syntax highlighting
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "bash", "json", "toml", "ini" },
      highlight = { enable = true },
      fold = { enable = true }, -- Enable treesitter-based folding
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
      vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
        pattern = { ".env", ".config" },
        callback = function()
          vim.bo.filetype = "sh" -- or "ini", "toml", etc. as appropriate
        end,
      })
    end,
  },

  {
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "html",
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
}
