local c = require('amaranth.colorscheme').colors

return {
  normal = {
    a = { fg = c.bg, bg = c.pink, gui = 'bold' },
    b = { fg = c.fg, bg = c.bg_light },
    c = { fg = c.fg, bg = c.bg_float },
  },
  insert = {
    a = { fg = c.bg, bg = c.green, gui = 'bold' },
    b = { fg = c.fg, bg = c.bg_light },
  },
  visual = {
    a = { fg = c.bg, bg = c.magenta, gui = 'bold' },
    b = { fg = c.fg, bg = c.bg_light },
  },
  replace = {
    a = { fg = c.bg, bg = c.red, gui = 'bold' },
    b = { fg = c.fg, bg = c.bg_light },
  },
  command = {
    a = { fg = c.bg, bg = c.orange, gui = 'bold' },
    b = { fg = c.fg, bg = c.bg_light },
  },
  inactive = {
    a = { fg = c.fg, bg = c.bg_float },
    b = { fg = c.fg, bg = c.bg_float },
    c = { fg = c.fg, bg = c.bg_float },
  },
}
