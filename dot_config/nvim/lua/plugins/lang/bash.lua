return {

  -- add bash to treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "bash",
      })
    end,
  },

  -- setup lspconfig
  -- {
  --   "neovim/nvim-lspconfig",
  --   opts = {},
  -- },

  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      -- add bash-language-server
      vim.list_extend(opts.ensure_installed, {
        "bash-language-server",
      })
    end,
  },
}
