-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'catppuccin/nvim', as = 'catppuccin' }
  use({
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!:).
	run = "make install_jsregexp",
    })
  use { 'nvim-tree/nvim-tree.lua', requires = { 'nvim-tree/nvim-web-devicons' } }
  use {
	"chrisgrieser/nvim-scissors",
	dependencies = { "nvim-telescope/telescope.nvim", "L3MON4D3/LuaSnip" }, 
	config = function()
		require("scissors").setup ({
			snippetDir = "/home/john/.config/nvim/snippets",
		})
	end,
      }
  use {
	"hrsh7th/nvim-cmp",
        requires = {
            'neovim/nvim-lspconfig', 'hrsh7th/cmp-buffer', 'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-nvim-lua',
	    'hrsh7th/cmp-path', 'hrsh7th/cmp-emoji'
    	}
      }
  use { 'saadparwaiz1/cmp_luasnip' }
  use {
        'tzachar/cmp-tabnine',
        run = './install.sh',
        requires = 'hrsh7th/nvim-cmp'
      }
  use {
    'onsails/lspkind-nvim',
    config = function()
      require('lspkind').init()
    end
  }
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  end)

