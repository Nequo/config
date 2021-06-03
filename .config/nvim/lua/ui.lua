vim.cmd [[colorscheme apprentice]]

-- Telescope
require("telescope").setup {
  defaults = {
    prompt_prefix = "  " .. " " .. "  ",
    selection_caret = " ❯ ",
    entry_prefix = "   ",
  }
}
