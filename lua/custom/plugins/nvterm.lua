return {
  'NvChad/nvterm',
  lazy = false,
  opts = {
    terminals = {
      shell = 'bash',
      list = {},
      type_opts = {
        float = {
          relative = 'editor',
          row = 0.2,
          col = 0.15,
          width = 0.7,
          height = 0.6,
          -- border = "single",
          border = 'double',
        },
        horizontal = { location = 'rightbelow', split_ratio = 0.3 },
        vertical = { location = 'rightbelow', split_ratio = 0.5 },
      },
    },
    behavior = {
      autoclose_on_quit = {
        enabled = false,
        confirm = true,
      },
      close_on_exit = true,
      auto_insert = true,
    },
  },
  config = function(_, opts)
    -- require "base46.term"
    require('nvterm').setup(opts)
  end,
}
