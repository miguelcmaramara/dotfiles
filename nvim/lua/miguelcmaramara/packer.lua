vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use({ -- color scheme
        'gruvbox-community/gruvbox',
        as = 'gruvbox',
        config = function()
            vim.cmd('colorscheme gruvbox')
        end
    })

    use({   -- nvim status bar
        'vim-airline/vim-airline',
        requires = {{'vim-airline/vim-airline-themes'}},
        config = function()
            vim.cmd('let g:airline_theme="gruvbox"')    -- styles airline
        end
    })

    -- better syntax highlighting
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground') -- settings for treesitter

    use('puremourning/vimspector') -- vimspector

    use { -- fuzzy finder
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use('mbbill/undotree') -- undo tree

    use('tpope/vim-fugitive') -- git functionality
    use('airblade/vim-gitgutter') -- git gutt3er

    use { --lsp
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    }

    use {'preservim/nerdcommenter'} --easy commenting

    use {'christoomey/vim-tmux-navigator'} -- tmux navigation



end)
