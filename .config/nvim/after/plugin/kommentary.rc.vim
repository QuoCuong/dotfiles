lua << EOF
local config = require('kommentary.config')

config.use_extended_mappings()

--vim.g.kommentary_create_default_mappings = false

--vim.api.nvim_set_keymap("n", "<leader>cic", "<Plug>kommentary_line_increase", {})
--vim.api.nvim_set_keymap("n", "<leader>ci", "<Plug>kommentary_motion_increase", {})
--vim.api.nvim_set_keymap("x", "<leader>ci", "<Plug>kommentary_visual_increase", {})
--vim.api.nvim_set_keymap("n", "<leader>cdc", "<Plug>kommentary_line_decrease", {})
--vim.api.nvim_set_keymap("n", "<leader>cd", "<Plug>kommentary_motion_decrease", {})
--vim.api.nvim_set_keymap("x", "<leader>cd", "<Plug>kommentary_visual_decrease", {})

EOF
