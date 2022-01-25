packer = require('packer')
packer.init {
	display = {
		open_fn = require('packer.util').float
	}
}

local use = packer.use
packer.reset()

packer.startup(function()
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Improve startup time
	use("lewis6991/impatient.nvim")

	-- Misc
	use("nvim-lua/plenary.nvim")
	use("nvim-lua/popup.nvim")
	use("nathom/filetype.nvim")
  use("norcalli/nvim-colorizer.lua")
	use("kyazdani42/nvim-web-devicons")
  use("ryanoasis/vim-devicons")
  use("airblade/vim-gitgutter")
  use("tpope/vim-surround")

  -- Status Bar
  use ({
    "dsych/galaxyline.nvim",
    branch = 'bugfix/diagnostics',
    config = function() require'config.galaxyline' end,
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  })

  -- Syntax Highlighting
  use ({ "nvim-treesitter/nvim-treesitter", run = ':TSUpdate' })
  require("config.treesitter")

  -- Telescope
  use ("nvim-telescope/telescope.nvim")
  use ({'nvim-telescope/telescope-fzy-native.nvim', run = 'make' })
  require("config.telescope")

  -- LSP Base
  use("neovim/nvim-lspconfig")
  require("config.lspconfig")

  -- LSP CMP
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-cmdline")
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-vsnip")
  use("hrsh7th/vim-vsnip")
  use("windwp/nvim-autopairs")
  require("config.cmp")

  -- Typescript & React Support
  use("leafgarland/typescript-vim")
  use("windwp/nvim-ts-autotag")
  use("jose-elias-alvarez/null-ls.nvim")
  use("jose-elias-alvarez/nvim-lsp-ts-utils")
  require("config.autotags")

  -- File Browser
  use("tiagofumo/vim-nerdtree-syntax-highlight")
  use("PhilRunninger/nerdtree-buffer-ops")
  use("PhilRunninger/nerdtree-visual-selection")
  use("preservim/nerdtree")


  -- Togglable Terminal
	use({
		"akinsho/nvim-toggleterm.lua",
		config = function()
			require("config.terminal").setup()
		end,
	})

  -- ColorScheme
  use("navarasu/onedark.nvim")

end)
