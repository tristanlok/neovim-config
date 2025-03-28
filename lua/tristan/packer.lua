--; ;This ;file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

-- Themes
-- Rose pine
--use ({
--	'rose-pine/neovim',
--	as = 'rose-pine',
--	config = function()
--		vim.cmd('colorscheme rose-pine-moon')
--	end
--})

--catppuccin

use { "catppuccin/nvim", as = "catppuccin" }

use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use( 'nvim-treesitter/playground')
use('tpope/vim-fugitive')

use {'ojroques/nvim-osc52'} -- Clipboard

use {'voldikss/vim-floaterm'} -- Floating Terminal

use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig"
}

--lua line

use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}

use {
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v3.x',
	requires = {
		--- Uncomment the two plugins below if you want to manage the language servers from neovim
		-- {'williamboman/mason.nvim'},
		-- {'williamboman/mason-lspconfig.nvim'},

		-- LSP Support
		{'neovim/nvim-lspconfig'},
		-- Autocompletion
		{'hrsh7th/nvim-cmp'},
		{'hrsh7th/cmp-nvim-lsp'},
		{'L3MON4D3/LuaSnip'},
	}
}
end)
