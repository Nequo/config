local M = {
  base00 = "#1B2229",
  base01 = "#1c1f24",
  base02 = "#202328",
  base03 = "#23272e",
  base04 = "#3f444a",
  base05 = "#5B6268",
  base06 = "#73797e",
  base07 = "#9ca0a4",
  red    = "#ff6c6b",
  orange = "#da8548",
  yellow = "#ECBE7B",
  green  = "#98be65",
  cyan   = "#46D9FF",
  blue   = "#51afef",
  purple = "#a9a1e1",
  brown  = "#ab7967",
  white  = "#ffffff",
  fg = '#bbc2cf'
}

function M.setItalics()
  vim.cmd("hi Comment gui=italic")
end

return M
