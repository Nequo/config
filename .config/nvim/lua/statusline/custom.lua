local colors = require "colors"
local M = {}
M.normal = {
  a = {bg = colors.base02, fg = colors.orange},
  b = {bg = colors.base02, fg = colors.white},
  c = {bg = colors.base02, fg = colors.fg},
  x = {bg = colors.base02, fg = colors.blue},
  z = {bg = colors.base02, fg = colors.green}
}
M.insert = {
  a = {bg = colors.base02, fg = colors.green},
  b = {bg = colors.base02, fg = colors.white},
  c = {bg = colors.base02, fg = colors.fg},
  x = {bg = colors.base02, fg = colors.blue},
  z = {bg = colors.base02, fg = colors.green}
}
M.visual = {
  a = {bg = colors.base02, fg = colors.purple},
  b = {bg = colors.base02, fg = colors.white},
  c = {bg = colors.base02, fg = colors.fg},
  x = {bg = colors.base02, fg = colors.blue},
  z = {bg = colors.base02, fg = colors.green}
}
M.replace = {
  a = {bg = colors.base02, fg = colors.red},
  b = {bg = colors.base02, fg = colors.white},
  c = {bg = colors.base02, fg = colors.fg},
  x = {bg = colors.base02, fg = colors.blue},
  z = {bg = colors.base02, fg = colors.green}
}
M.command = {
  a = {bg = colors.base02, fg = colors.cyan},
  b = {bg = colors.base02, fg = colors.white},
  c = {bg = colors.base02, fg = colors.fg},
  x = {bg = colors.base02, fg = colors.blue},
  z = {bg = colors.base02, fg = colors.green}
}

M.terminal = M.normal

M.inactive = {
  a = {bg = colors.base02, fg = colors.base05},
  b = {bg = colors.base02, fg = colors.base05},
  c = {bg = colors.base02, fg = colors.base05}
}
return M
