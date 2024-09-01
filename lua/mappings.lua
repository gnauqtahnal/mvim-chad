-- require "nvchad.mappings"

local map = vim.keymap.set

map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "General Clear highlights" })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- tabufline
map("n", "<leader>bt", "<cmd>enew<CR>", { desc = "[Buffer] new" })
map("n", "<tab>", function()
  require("nvchad.tabufline").next()
end, { desc = "[Buffer] next" })
map("n", "<S-tab>", function()
  require("nvchad.tabufline").prev()
end, { desc = "[Buffer] prev" })
map("n", "<leader>bw", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })

-- terminal
map("t", "<C-x>", "<C-\\><C-N>", { desc = "[Terminal] escape terminal mode" })
map("t", "<leader>tx", "<C-\\><C-N>", { desc = "[Terminal] escape terminal mode" })
map({ "n", "t" }, "<leader>th", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "[Terminal] new horizontal term" })
