return {

  -- add astro to treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "astro",
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
      -- add astro-language-server
      vim.list_extend(opts.ensure_installed, {
        "astro-language-server",
      })
    end,
  },
}
