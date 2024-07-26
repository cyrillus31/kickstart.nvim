return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  init = function()
    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'auto',
        -- theme = 'wombat',
        -- theme = 'gruvbox',
        -- theme = 'everforest',
        -- theme = 'palenight',
        component_separators = { left = '', right = '' },
        -- section_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' }, --
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {"NvimTree", "Neotree"},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff' },
        lualine_c = { 'diagnostics' },
        -- lualine_c = { 'filename' },
        lualine_x = { 'fileformat', 'filetype' },
        -- lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {},
        lualine_x = { 'filename', 'location' },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      winbar = {
        lualine_a = { 'filename' },
        -- lualine_b = { 'diagnostics' },
      },
      inactive_winbar = {
        -- lualine_b = { 'filename' },
        -- lualine_c = { 'diagnostics' },
      },
      extensions = {},
    }
  end,
}
