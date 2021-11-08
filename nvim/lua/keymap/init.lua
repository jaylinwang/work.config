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
  
  -- Plugin lspsaga
  -- ["n|gh"]             = map_cr('Lspsaga lsp_finder'):with_noremap():with_silent(),
  -- ["n|gd"]             = map_cr('Lspsaga preview_definition'):with_noremap():with_silent(),
  -- ["n|<Leader>ca"]     = map_cr('Lspsaga code_action'):with_noremap():with_silent(),
  -- ["v|<Leader>ca"]     = map_cr('<C-U>Lspsaga range_code_action'):with_noremap():with_silent(),
  -- ["n|<Leader>ch"]     = map_cr('Lspsaga hover_doc'):with_noremap():with_silent(),
  -- ["n|<Leader>cr"]     = map_cr('Lspsaga rename'):with_noremap():with_silent(),
  -- ["n|<Leader>cc"]     = map_cmd('<cmd>lua require("lspsaga.diagnostic").show_cursor_diagnostics()<CR>'):with_noremap():with_silent(),
  -- ["n|<Leader>cd"]     = map_cr('Lspsaga show_line_diagnostics'):with_noremap():with_silent(),
  -- ["n|[e"]             = map_cr('Lspsaga diagnostic_jump_next'):with_noremap():with_silent(),
  -- ["n|]e"]             = map_cr('Lspsaga diagnostic_jump_prev'):with_noremap():with_silent(),

  -- -- Plugin bufferline
  -- ["n|<Leader>bb"]     = map_cr('BufferLinePick'):with_noremap():with_silent(),
  -- ["n|<Leader>bc"]     = map_cr('BufferLinePickClose'):with_noremap():with_silent(),

}

bind.nvim_load_mapping(plugin_map)
