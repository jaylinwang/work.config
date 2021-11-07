local leader_map = function()
  vim.g.mapleader = ' '
  vim.api.nvim_set_keymap('n',' ','',{noremap = true})
  vim.api.nvim_set_keymap('x',' ','',{noremap = true})
end

local load_core = function()
  leader_map();
  require('plugin')
  require('config')
  require('keymap')

  require'nvim-treesitter.configs'.setup {
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    indent = {
      enable = true
    }
  }
end

load_core()
