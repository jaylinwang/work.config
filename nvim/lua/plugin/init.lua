return require('packer').startup(function()
   -- 插件管理
  use 'wbthomason/packer.nvim'

  -- 基础依赖
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'

  -- ui 配置
  -- use 'navarasu/onedark.nvim'
  use 'glepnir/dashboard-nvim'
  use {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  -- 编辑器快捷操作
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- 补全
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'

  -- format
  use 'prettier/vim-prettier'

  -- 原有的一些 vim 插件
  use 'mg979/vim-visual-multi'
  use 'terryma/vim-expand-region'
  use 'tpope/vim-commentary'

  use 'windwp/nvim-autopairs'
use 'dstein64/vim-startuptime'
end)
