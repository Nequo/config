local lualine = require 'lualine'

local custom_gruvbox = require'lualine.themes.gruvbox'
-- Change the background of lualine_c section for normal mode
custom_gruvbox.normal.c.bg = '#3c3836' -- rgb colors are supported
custom_gruvbox.insert.c.bg = '#3c3836' -- rgb colors are supported
custom_gruvbox.command.c.bg = '#3c3836' -- rgb colors are supported
custom_gruvbox.visual.c.bg = '#3c3836' -- rgb colors are supported
custom_gruvbox.insert.c.fg = '#a89984' -- rgb colors are supported
custom_gruvbox.command.c.fg = '#a89984' -- rgb colors are supported
custom_gruvbox.visual.c.fg = '#a89984' -- rgb colors are supported

local config = {
    options = {
      disabled_filetypes ={'NvimTree'},
      theme = 'gruvbox',
      section_separators = {'', ''},
      component_separators = {'', ''},
      --component_separators = {' ', ' '},
      --section_separators = {'', ''},
      icons_enabled = true,
      path = 1,
    },
    sections = {
      lualine_a = { {'mode', upper = true} },
      lualine_b = { {'branch', icon = ""} },
      lualine_c = { {'filename', file_status = true} },
      lualine_x = { },
      lualine_y = { 'progress' },
      lualine_z = { 'location'  },
    },
    inactive_sections = {
      lualine_a = {  },
      lualine_b = {  },
      lualine_c = { 'filename' },
      lualine_x = { 'location' },
      lualine_y = {  },
      lualine_z = {   }
    }
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
  table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x ot right section
local function ins_right(component)
  table.insert(config.sections.lualine_x, component)
end

ins_left {
  'diagnostics',
  sources = {'nvim_lsp'},
  symbols = {error = ' ', warn = ' ', info = ' '},
}


ins_right {
  -- Lsp server name .
  function()
    local msg = 'None'
    local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
    local clients = vim.lsp.get_active_clients()
    if next(clients) == nil then return msg end
    for _, client in ipairs(clients) do
      local filetypes = client.config.filetypes
      if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
        return client.name
      end
    end
    return msg
  end,
  icon = ' ',
  color = {fg = '#b8bb26', gui = 'bold'}
}

ins_right {
    'filetype'
}

lualine.setup(config)

