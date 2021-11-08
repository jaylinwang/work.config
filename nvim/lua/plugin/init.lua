return require('packer').startup(function()
   -- 插件管理
  use 'wbthomason/packer.nvim'

  -- UI 配置
  -- use 'navarasu/onedark.nvim'
  use {
    'glepnir/dashboard-nvim',
    config = require('plugin.dashboard')
  }
  use {
    'ellisonleao/gruvbox.nvim', 
    requires = {'rktjmp/lush.nvim'}, 
    config = require('plugin.gruvbox')
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = require('plugin.lualine')
  }
  use {
    'akinsho/bufferline.nvim', 
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require("bufferline").setup{}
    end
  }
  -- 编辑器快捷操作
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 
      {'nvim-lua/plenary.nvim'},
      {'nvim-lua/popup.nvim'}
    },
    config = require('plugin.telescope')
  }
  use {
    'nvim-telescope/telescope-fzf-native.nvim', 
    config = function()
      require('telescope').load_extension('fzf')
    end,
    run = 'make' 
  }
  use {
    'nvim-telescope/telescope-frecency.nvim',
    config = function()
      require'telescope'.load_extension('frecency')
    end,
    requires = {'tami5/sqlite.lua'}
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = require('plugin.nvim-tree')
  }

  -- 补全
  use {
    'neovim/nvim-lspconfig',
    config=require('plugin.lsp')
  }
  -- use {
  --   'glepnir/lspsaga.nvim',
  --   config = require('plugin.lspsaga')
  -- }
  use {
    'hrsh7th/nvim-cmp',
    config = require('plugin.cmp')
  }
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/vim-vsnip'

   -- format
  use 'prettier/vim-prettier'

  -- 编辑器基础能力
  use {'editorconfig/editorconfig-vim'}


  -- 原有的一些 vim 插件
  use 'mg979/vim-visual-multi'
  use 'terryma/vim-expand-region'
  use 'tpope/vim-commentary'

  use {
    'windwp/nvim-autopairs',
    config = require('plugin.autopair')
  }
  use 'dstein64/vim-startuptime'

end)
