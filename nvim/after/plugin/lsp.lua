vim.opt.signcolumn="yes"

local lsp = require('lsp-zero').preset({
  name = 'minimal',
  set_lsp_keymaps = true,
  manage_nvim_cmp = true,
  suggest_lsp_servers = false,
})

lsp.ensure_installed({
    'clangd',
    --'eslint',
    'tsserver',
    'tailwindcss',
    'lua_ls',
    'pyright',

})

local cmp = require('cmp') -- keymaps
lsp.setup_nvim_cmp({
  mapping = lsp.defaults.cmp_mappings({
    ['<CR>'] = vim.NIL,
    ['<Tab>'] = vim.NIL,
  })
})



lsp.setup()
