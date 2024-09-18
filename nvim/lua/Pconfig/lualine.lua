require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'catppuccin',
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },

  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff', 'diagnostics' },
    lualine_c = {
      'filename',
      -- {
      --   "lsp_progress",
      --   spinner_symbols = { " ", " ", " ", " ", " ", " " },
      -- },
    },
    lualine_x = {
      'filesize',
      'encoding',
      -- {
      -- 'fileformat',
      --   -- symbols = {
      --   --   mac = '', -- e711
      --   --   unix = '', -- e712
      --   --   dos = '', -- e70f
      --   -- },
      --   symbols = {
      --     unix = "LF",
      --     dos = "CRLF",
      --     mac = "CR",
      --   },
      -- },
      'filetype'
    },
    lualine_y = { 'progress' },
    lualine_z = { 'location' }
  },

  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = { 'nvim-tree', 'fzf', 'mason', 'lazy' },
}
