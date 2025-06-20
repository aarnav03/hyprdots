-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "everblush",

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

M.nvdash = {
  load_on_startup = true,

  -- header = {
  --   "                            ",
  --   "     ▄▄         ▄ ▄▄▄▄▄▄▄   ",
  --   "   ▄▀███▄     ▄██ █████▀    ",
  --   "   ██▄▀███▄   ███           ",
  --   "   ███  ▀███▄ ███           ",
  --   "   ███    ▀██ ███           ",
  --   "   ███      ▀ ███           ",
  --   "   ▀██ █████▄▀█▀▄██████▄    ",
  --   "     ▀ ▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀   ",
  --   "                            ",
  --   "     Powered By  eovim    ",
  --   "                            ",
  -- },
  header = {
    "          .            ",
    "         / \\          ",
    "        /   \\         ",
    "       /     \\        ",
    "      /       \\       ",
    "     /         \\      ",
    "    /    .-.    \\     ",
    "   /    |   |    \\    ",
    "  /   _.'   '._   \\   ",
    " /_.-'         '-._\\  ",
    " ",
    " ",
    " ",
    "  Powered By  eovim  ",
  },

  buttons = {
    -- { txt = "  Find File", keys = "Spc f f", cmd = "Telescope find_files" },
    -- { txt = "  Recent Files", keys = "Spc f o", cmd = "Telescope oldfiles" },
    -- -- more... check nvconfig.lua file for full list of buttons
    enabled = false,
  },
}

M.ui = {
  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "round",
    order = nil,

    -- order = { "mode", "f", "git", "%=", "lsp_msg", "%=", "lsp" },
    modules = nil,
    -- enabled = false,
  },
}

-- M.ui {
--   -- theme = "everblush",
--   statusline = {
--     -- theme = "default",
--     separator_style = "default",
--     overriden_modules = nil,
--     -- Disable NvChad statusline completely
--     enabled = false,
--   },
-- }
--
return M
