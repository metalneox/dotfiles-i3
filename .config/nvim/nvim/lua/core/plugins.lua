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
  -- Packer
  use 'wbthomason/packer.nvim'

  -- Theme
  -- use { "catppuccin/nvim", as = "catppuccin" }
  -- use "lunarvim/Onedarker.nvim"
  --use 'rmehri01/onenord.nvim'
  use 'Mofiqul/vscode.nvim'

  -- Todo comments
  use 'folke/todo-comments.nvim'

  -- Buffer navigation
  use 'nvim-lualine/lualine.nvim'

  --Markdown Preview
  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })

  -- Snippets
  use 'L3MON4D3/LuaSnip' 
  use "rafamadriz/friendly-snippets"

  --File Explorer
  use 'nvim-tree/nvim-tree.lua'
  -- Icons
  use 'nvim-tree/nvim-web-devicons'
  -- Sitter
  use 'nvim-treesitter/nvim-treesitter'
  -- Git 
  use 'lewis6991/gitsigns.nvim'

  ----------------LSP---------------------
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
 
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'saadparwaiz1/cmp_luasnip'
  ----------------------------------------

  -- Telescope
  use {
	  'nvim-telescope/telescope.nvim',
	  tag = '0.1.0',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
