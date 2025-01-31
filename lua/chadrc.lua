-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@class ChadrcConfig
local M = {}

vim.api.nvim_set_hl(0, "Comment", { fg = "#00f7ff" })
vim.api.nvim_set_hl(0, "@comment", { link = "Comment" })
vim.opt.relativenumber = true
vim.opt.colorcolumn = "79"

M.base46 = {
  theme = "chadracula-evondev",
  theme_toggle = { "neofusion", "ayu_dark", "bearded_arc", "chadracula-evondev", "chadracula-evondev" },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}
M.nvdash = { load_on_startup = true }
M.ui = {
  tabufline = {
    lazyload = false,
  },
}

return M
