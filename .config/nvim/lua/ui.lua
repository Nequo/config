vim.g.monokaipro_italic_keywords = false
vim.g.monokaipro_flat_float = false
vim.cmd [[colorscheme gruvbox]]

-- Telescope
require("telescope").setup {
  defaults = {
    prompt_prefix = "  " .. " " .. "  ",
    selection_caret = " ❯ ",
    entry_prefix = "   ",
  }
}

-- Gitsigns
-- require('gitsigns').setup{
--   signs = {
--     add          = {hl = 'GitSignsAdd'   , text = '┃', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
--     change       = {hl = 'GitSignsChange', text = '┃', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
--     delete       = {hl = 'GitSignsDelete', text = '┃', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
--     topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
--     changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
--   }
-- }

require'colorizer'.setup()
