-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToogle)


  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

--  use({
--	  'rose-pine/neovim',
--	  as = 'rose-pine',
--	  config = function()
--		  vim.cmd('colorscheme rose-pine')
--	  end
--  })

-- themes 
    use("catppuccin/nvim", {as = "catppuccin"})
    use('romgrk/barbar.nvim', {requires ='nvim-tree/nvim-web-devicons'})

-- productivity
    use("nvim-lualine/lualine.nvim")
    use("nvim-tree/nvim-tree.lua", {requires = "nvim-tree/nvim-web-devicons"})
    use('nvim-tree/nvim-web-devicons')

-- file type
    use('theprimeagen/harpoon')

-- development
    use("lewis6991/gitsigns.nvim")
    use('nvim-treesitter/playground')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
end)
