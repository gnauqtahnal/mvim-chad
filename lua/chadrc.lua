-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "chadracula",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

M.ui = {
  cmp = {
    icon = true,
    lspkind_text = true,
    style = "atom",
  },
  telescope = {
    style = "bordered",
  },
  statusline = {
    theme = "minimal",
    separator_style = "round",
  },
}

return M
