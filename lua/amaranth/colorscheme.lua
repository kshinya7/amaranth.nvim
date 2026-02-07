local config = require 'amaranth.config'

local c = {
  -- Base colors
  bg = '#1f212b',
  bg_float = '#242738',
  bg_light = '#2a2f45',
  bg_lighter = '#323850',
  bg_accent = '#1a1c25',
  fg = '#e0d8db',
  fg_dim = '#9a9eb0',

  -- Accent colors
  pink = '#eb5690',
  pink_light = '#e1a7ad',
  pink_dark = '#943d5f',
  magenta = '#c678dd',
  purple = '#cb75d1',
  blue = '#a9c1e8',
  cyan = '#56b6c2',
  green = '#71b698',
  yellow = '#f3dfb2',
  orange = '#f7ca6e',
  red = '#d65d68',
  gray = '#4f515e',
}

local colorscheme = {
  editorBackground = config.transparent and 'none' or c.bg,
  colors = c,
}

return colorscheme
