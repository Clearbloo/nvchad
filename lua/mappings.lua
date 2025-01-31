require "nvchad.mappings"

local map = vim.keymap.set

-- Rust
map("n", "<leader>rcu", function()
  require("crates").upgrade_all_crates()
end, { desc = "Upgrade all rust crates" })

-- Python
map("n", "<leader>dpr", function()
  require("dap-python").test_method()
end, { desc = "Test python method" })
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>")
map("n", "<leader>dus", function()
  local widgets = require "dap.ui.widgets"
  local sidebar = widgets.sidebar(widgets.scopes)
  sidebar.open()
end, { desc = "Open debugging sidebar" })

map("n", "<leader>fd", "<cmd> Telescope fd <CR>", { desc = "Find files with fd" })
map("n", "<leader>gg", "<cmd> LazyGit <CR>", { desc = "Open LazyGit" })
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
