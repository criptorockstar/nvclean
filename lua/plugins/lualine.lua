local config = function()
  local theme = require("lualine.themes.codedark")

  -- set bg transparency in all modes
  theme.normal.c.bg = nil

  require('lualine').setup({
    options = {
      icons_enabled = true,
      theme = theme,
      globalstatus = true,
      disabled_filetypes = {}
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch' },
      lualine_c = { {
        'filename',
        file_status = true, -- displays file status
        path = 0, -- just filename
      } },
      lualine_x = {
        { 'diagnostics', sources = { 'nvim_diagnostic' }, symbols = { error = '󰃤 ', warn = ' ', info = ' ', hint = ' ' } },
        'encoding',
        'filetype',
      },
      lualine_y = { 'progress' },
      lualine_z = { 'location' }
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {{
        'filename',
        file_status = true,
        path = 1, -- 1 = relative path
      }},
      lualine_x = { 'location' },
      lualine_y = {},
      lualine_z = {},
    },
    tabline = {},
    extensions = { 'fugitive' }
  })
end

return {
  "nvim-lualine/lualine.nvim",
  lazy = false,
  config = config,
}
