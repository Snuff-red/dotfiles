local M = {}

M.base46 = {
  theme = "one_light",
  transparency = false,
  theme_toggle = { "one_light", "onedark" },
}

M.ui = {
  statusline = { theme = 'default' },

  cmp = {
    icons = true,
  },

  telescope = {
    style = "borderless"
  },

  tabufline = {
    enabled = true,
  },
}

M.nvdash = {
  load_on_startup = true,
}

M.cheatsheet = {
  theme = "grid",                                                     -- simple/grid
  excluded_groups = { "terminal (t)", "autopairs", "Nvim", "Opens" }, -- can add group name or with mode
}

M.mason = { pkgs = {} }



M.lsp = {
  signature = true,
}

return M
