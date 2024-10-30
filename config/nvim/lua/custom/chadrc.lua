---@type ChadrcConfig
local M = {}

--M.ui = {
--  theme = 'gruvbox',
--  nvdash = {
--    load_on_startup = true,
--    header = {
--      "           ▄ ▄                   ",
--      "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
--      "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
--      "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
--      "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
--      "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
--      "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
--      "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
--      "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
--    },
--    buttons = {
--      { "  Find File", "Spc f f", "Telescope find_files" },
--      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
--      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
--      { "  Bookmarks", "Spc m a", "Telescope marks" },
--      { "  Themes", "Spc t h", "Telescope themes" },
--      { "  Mappings", "Spc c h", "NvCheatsheet" },
--    },
--  },
--}
--
M.plugins = 'custom.plugins'
require('custom.mappings')

vim.o.guicursor = 'n-v-c:block,i:block'

return M
