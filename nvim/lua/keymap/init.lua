local bind = require('keymap.bind')
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd
local map_args = bind.map_args

local plugin_map = {
  -- Plugin nvim-tree
  ["n|<Leader>e"]      = map_cr('NvimTreeToggle'):with_noremap():with_silent(),
  ["n|<Leader>i"]      = map_cr('NvimTreeFindFile'):with_noremap():with_silent(),

    -- Plugin Telescope
  ["n|<c-f>"]     = map_cr('Telescope'):with_noremap(),
  ["n|<Leader>fb"]     = map_cr('Telescope buffers'):with_noremap():with_silent(),
  ["n|<Leader>fe"]     = map_cr('Telescope file_browser'):with_noremap():with_silent(),
  ["n|<Leader>ff"]     = map_cr('Telescope find_files'):with_noremap():with_silent(),
  ["n|<Leader>fg"]     = map_cr('Telescope git_files'):with_noremap():with_silent(),
  ["n|<Leader>fw"]     = map_cr('Telescope grep_string'):with_noremap():with_silent(),
  ["n|<Leader>fl"]     = map_cr('Telescope loclist'):with_noremap():with_silent(),
  ["n|<Leader>fc"]     = map_cr('Telescope git_commits'):with_noremap():with_silent(),
  
}

bind.nvim_load_mapping(plugin_map)
