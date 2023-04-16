local bind = require('keymap.bind')
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd
local map_args = bind.map_args

local plugin_map = {
  -- Plugin nvim-tree
  ["n|<Leader>t"] = map_cr('NvimTreeToggle'):with_noremap():with_silent(),
  ["n|<Leader>i"] = map_cr('NvimTreeFindFile'):with_noremap():with_silent(),

  -- Plugin Telescope
  ["n|<c-f>"] = map_cr('Telescope'):with_noremap():with_silent(),
  ["n|<Leader>fb"] = map_cr('Telescope buffers'):with_noremap():with_silent(),
  ["n|<Leader>fe"] = map_cr('Telescope file_browser'):with_noremap():with_silent(),
  ["n|<Leader>ff"] = map_cr('Telescope find_files'):with_noremap():with_silent(),
  ["n|<Leader>fg"] = map_cr('Telescope live_grep'):with_noremap():with_silent(),
  ["n|<Leader>fw"] = map_cr('Telescope grep_string'):with_noremap():with_silent(),
  ["n|<Leader>fl"] = map_cr('Telescope loclist'):with_noremap():with_silent(),
  ["n|<Leader>fc"] = map_cr('Telescope git_commits'):with_noremap():with_silent(),

  -- Plugin bufferline
  ["n|<Leader>bb"] = map_cr("BufferLinePick"):with_noremap():with_silent(),
  ["n|<Leader>bc"] = map_cr("BufferLinePickClose"):with_noremap():with_silent(),
 
  -- format
  ["n|<Leader>m"] = map_cr('Neoformat'):with_noremap():with_silent(),
}

bind.nvim_load_mapping(plugin_map)
