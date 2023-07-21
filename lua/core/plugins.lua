local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
	--colorscheme
	use 'ellisonleao/gruvbox.nvim'
	--tree
	use 'nvim-tree/nvim-tree.lua'
	use 'nvim-tree/nvim-web-devicons'
	--treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
				local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
				ts_update()
		end,
	}

	--lsp server
	use {
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig',
		'neovim/nvim-lspconfig'
	}

	--autocompletion
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'

	--snippet
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'
	use 'rafamadriz/friendly-snippets'

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	--tabs
	use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

	--indent guides
	use "lukas-reineke/indent-blankline.nvim"

	--autopairs
	use "windwp/nvim-autopairs"

	--scroll
	use 'petertriho/nvim-scrollbar'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
