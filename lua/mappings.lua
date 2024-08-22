require "nvchad.mappings"

local map = vim.keymap.set
local unmap = vim.keymap.del

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- delete default keymaps
unmap("n", "<C-s>")
unmap("n", "<C-c>")
unmap("n", "<leader>n")
unmap("n", "<leader>rn")
unmap("n", "<leader>fm")

-- nvimtree
unmap("n", "<C-n>")
unmap("n", "<leader>e")
