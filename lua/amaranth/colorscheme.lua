local config = require 'amaranth.config'

local c = {
  -- Base colors
  bg = '#1f212b',
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
  -- Editor
  editorBackground = config.transparent and 'none' or c.bg,
  sidebarBackground = c.bg,
  popupBackground = c.bg_light,
  floatingWindowBackground = c.bg_light,
  menuOptionBackground = c.bg_lighter,

  -- Text
  mainText = c.fg,
  emphasisText = '#ffffff',
  inactiveText = c.gray,
  lineNumberText = c.gray,
  commentText = c.gray,

  -- Borders
  windowBorder = c.bg_lighter,

  -- Syntax
  syntaxFunction = c.pink,
  syntaxKeyword = c.magenta,
  syntaxOperator = c.pink_light,
  syntaxError = c.red,
  stringText = c.green,
  constantText = c.orange,
  typeText = c.cyan,

  -- Feedback
  successText = c.green,
  warningText = c.yellow,
  errorText = c.red,
  linkText = c.blue,
  warningEmphasis = c.yellow,

  -- Raw colors for direct access
  colors = c,
}

return colorscheme
