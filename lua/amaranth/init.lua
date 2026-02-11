local colorscheme = require 'amaranth.colorscheme'
local config = require 'amaranth.config'
local utils = require 'amaranth.utils'

local theme = {}
local c = colorscheme.colors

local function set_terminal_colors()
  vim.g.terminal_color_0 = c.bg
  vim.g.terminal_color_1 = c.red
  vim.g.terminal_color_2 = c.green
  vim.g.terminal_color_3 = c.yellow
  vim.g.terminal_color_4 = c.blue
  vim.g.terminal_color_5 = c.pink
  vim.g.terminal_color_6 = c.cyan
  vim.g.terminal_color_7 = c.fg
  vim.g.terminal_color_8 = c.gray
  vim.g.terminal_color_9 = c.red
  vim.g.terminal_color_10 = c.green
  vim.g.terminal_color_11 = c.yellow
  vim.g.terminal_color_12 = c.blue
  vim.g.terminal_color_13 = c.pink
  vim.g.terminal_color_14 = c.cyan
  vim.g.terminal_color_15 = c.fg
  vim.g.terminal_color_background = c.bg
  vim.g.terminal_color_foreground = c.fg
end

local function set_groups()
  local bg = config.transparent and "NONE" or colorscheme.editorBackground
  local diff_add = utils.shade(c.green, 0.25, c.bg)
  local diff_delete = utils.shade(c.red, 0.25, c.bg)
  local diff_change = utils.shade(c.blue, 0.25, c.bg)
  local diff_text = utils.shade(c.yellow, 0.35, c.bg)

  local groups = {
    -- Editor
    Normal = { fg = c.fg, bg = bg },
    NormalFloat = { fg = c.fg, bg = c.bg_float },
    FloatBorder = { fg = c.gray, bg = c.bg },
    Cursor = { fg = c.bg, bg = c.fg },
    CursorLine = { bg = utils.shade(c.bg_lighter, 0.3, c.bg) },
    CursorLineNr = { fg = c.pink, bold = true },
    LineNr = { fg = c.gray },
    Visual = { bg = c.bg_light },
    Search = { fg = c.bg, bg = c.yellow },
    IncSearch = { fg = c.bg, bg = c.orange },
    Pmenu = { fg = c.fg, bg = c.bg_float },
    PmenuSel = { fg = c.bg, bg = c.orange },
    PmenuSbar = { bg = c.bg_lighter },
    PmenuThumb = { bg = c.gray },
    StatusLine = { fg = c.fg, bg = c.bg_lighter },
    StatusLineNC = { fg = c.gray, bg = c.bg_light },
    VertSplit = { fg = c.bg_lighter },
    WinSeparator = { fg = c.bg_accent },
    SignColumn = { bg = bg },
    ColorColumn = { bg = c.bg_light },
    Folded = { fg = c.gray, bg = c.bg_light },
    FoldColumn = { fg = c.gray, bg = bg },
    MatchParen = { fg = c.orange, bold = true },
    Directory = { fg = c.orange },
    Title = { fg = c.orange, bold = true },
    EndOfBuffer = { fg = c.bg_light },
    NonText = { fg = c.bg_lighter },
    Whitespace = { fg = c.bg_lighter },
    SpecialKey = { fg = c.bg_lighter },
    Substitute = { fg = c.bg, bg = c.orange },
    QuickFixLine = { bg = c.bg_lighter },
    CursorColumn = { bg = c.bg_light },

    -- Tabline
    TabLine = { fg = c.gray, bg = c.bg_accent },
    TabLineSel = { fg = c.fg, bg = c.bg_accent, bold = true },
    TabLineFill = { bg = c.bg_accent },

    -- Spell
    SpellBad = { undercurl = true, sp = c.red },
    SpellCap = { undercurl = true, sp = c.yellow },
    SpellRare = { undercurl = true, sp = c.magenta },
    SpellLocal = { undercurl = true, sp = c.cyan },

    -- Diff
    DiffAdd = { bg = diff_add },
    DiffChange = { bg = diff_change },
    DiffDelete = { bg = diff_delete },
    DiffText = { bg = diff_text },

    -- Syntax
    Comment = { fg = c.gray, italic = config.italics.comments },
    Constant = { fg = c.magenta },
    String = { fg = c.green },
    Character = { fg = c.green },
    Number = { fg = c.magenta },
    Boolean = { fg = c.magenta },
    Float = { fg = c.magenta },
    Identifier = { fg = c.fg },
    Function = { fg = c.orange },
    Statement = { fg = c.pink },
    Conditional = { fg = c.pink },
    Repeat = { fg = c.pink },
    Label = { fg = c.pink },
    Operator = { fg = c.pink_light },
    Keyword = { fg = c.pink },
    Exception = { fg = c.pink },
    PreProc = { fg = c.orange },
    Include = { fg = c.orange },
    Define = { fg = c.orange },
    Macro = { fg = c.orange },
    PreCondit = { fg = c.orange },
    Type = { fg = c.blue },
    StorageClass = { fg = c.fg },
    Structure = { fg = c.cyan },
    Typedef = { fg = c.cyan },
    Special = { fg = c.pink_light },
    SpecialChar = { fg = c.pink_light },
    Tag = { fg = c.orange },
    Delimiter = { fg = c.fg_dim },
    SpecialComment = { fg = c.gray },
    Debug = { fg = c.red },
    Underlined = { fg = c.blue, underline = true },
    Error = { fg = c.red },
    Todo = { fg = c.bg, bg = c.yellow, bold = true },

    -- Messages
    MsgArea = { fg = c.fg },
    MoreMsg = { fg = c.cyan },
    Question = { fg = c.cyan },
    WarningMsg = { fg = c.yellow },
    ErrorMsg = { fg = c.red },

    -- WinBar
    WinBar = { fg = c.fg, bold = true },
    WinBarNC = { fg = c.gray },

    -- Diagnostics
    DiagnosticError = { fg = c.red },
    DiagnosticWarn = { fg = c.yellow },
    DiagnosticInfo = { fg = c.blue },
    DiagnosticHint = { fg = c.cyan },
    DiagnosticVirtualTextError = { fg = c.red },
    DiagnosticVirtualTextWarn = { fg = c.yellow },
    DiagnosticVirtualTextInfo = { fg = c.blue },
    DiagnosticVirtualTextHint = { fg = c.cyan },
    DiagnosticUnderlineError = { undercurl = true, sp = c.red },
    DiagnosticUnderlineWarn = { undercurl = true, sp = c.yellow },
    DiagnosticUnderlineInfo = { undercurl = true, sp = c.blue },
    DiagnosticUnderlineHint = { undercurl = true, sp = c.cyan },

    -- LSP
    LspReferenceText = { bg = c.bg_lighter },
    LspReferenceRead = { bg = c.bg_lighter },
    LspReferenceWrite = { bg = c.bg_lighter },
    LspSignatureActiveParameter = { fg = c.orange, bold = true },

    -- Treesitter
    ['@variable'] = { fg = c.fg },
    ['@variable.builtin'] = { fg = c.purple },
    ['@variable.parameter'] = { fg = c.magenta, italic = true },
    ['@variable.member'] = { fg = c.pink_light },
    ['@constant'] = { fg = c.blue },
    ['@constant.builtin'] = { fg = c.magenta },
    ['@module'] = { fg = c.cyan },
    ['@label'] = { fg = c.fg },
    ['@string'] = { link = 'String' },
    ['@string.escape'] = { fg = c.orange },
    ['@string.special'] = { fg = c.orange },
    ['@string.special.symbol'] = { fg = c.magenta },
    ['@character'] = { link = 'Character' },
    ['@number'] = { link = 'Number' },
    ['@boolean'] = { link = 'Boolean' },
    ['@function'] = { fg = c.orange },
    ['@function.builtin'] = { fg = c.orange },
    ['@function.call'] = { fg = c.orange },
    ['@function.method'] = { fg = c.orange },
    ['@function.method.call'] = { fg = c.orange },
    ['@method'] = { fg = c.orange },
    ['@method.call'] = { fg = c.orange },
    ['@constructor'] = { fg = c.cyan },
    ['@keyword'] = { fg = c.pink },
    ['@keyword.function'] = { fg = c.pink },
    ['@keyword.return'] = { fg = c.pink },
    ['@keyword.operator'] = { fg = c.pink },
    ['@keyword.conditional'] = { fg = c.pink },
    ['@keyword.repeat'] = { fg = c.pink },
    ['@keyword.exception'] = { fg = c.pink },
    ['@operator'] = { fg = c.pink },
    ['@punctuation'] = { fg = c.fg_dim },
    ['@punctuation.bracket'] = { fg = c.fg_dim },
    ['@punctuation.delimiter'] = { fg = c.fg_dim },
    ['@punctuation.special'] = { fg = c.orange },
    ['@type'] = { fg = c.fg },
    ['@type.builtin'] = { fg = c.cyan, italic = true },
    ['@type.definition'] = { fg = c.cyan },
    ['@attribute'] = { fg = c.orange },
    ['@property'] = { fg = c.pink_light },
    ['@field'] = { fg = c.pink_light },
    ['@parameter'] = { fg = c.fg, italic = true },
    ['@tag'] = { fg = c.orange },
    ['@tag.attribute'] = { fg = c.pink_light },
    ['@tag.delimiter'] = { fg = c.fg_dim },
    ['@text'] = { fg = c.fg },
    ['@markup.heading'] = { fg = c.orange, bold = true },
    ['@markup.strong'] = { bold = true },
    ['@markup.italic'] = { italic = true },
    ['@markup.link.url'] = { fg = c.blue, underline = true },
    ['@comment'] = { link = 'Comment' },
    ['@error'] = { fg = c.red },

    -- Ruby specific
    ['@symbol'] = { fg = c.magenta },
    ['@symbol.ruby'] = { fg = c.magenta },
    ['@string.special.symbol.ruby'] = { fg = c.green },

    -- LSP semantic tokens
    ['@lsp.type.namespace'] = { link = '@module' },
    ['@lsp.type.type'] = { link = '@type' },
    ['@lsp.type.class'] = { link = '@type' },
    ['@lsp.type.enum'] = { link = '@type' },
    ['@lsp.type.interface'] = { link = '@type' },
    ['@lsp.type.struct'] = { link = '@type' },
    ['@lsp.type.parameter'] = { link = '@parameter' },
    ['@lsp.type.property'] = { link = '@property' },
    ['@lsp.type.function'] = { link = '@function' },
    ['@lsp.type.method'] = { link = '@function.method' },
    ['@lsp.type.variable'] = { link = '@variable' },
    ['@lsp.typemod.function.declaration'] = { link = '@function' },

    -- Git signs
    GitSignsAdd = { fg = c.green },
    GitSignsChange = { fg = c.orange },
    GitSignsDelete = { fg = c.red },

    -- Neo-tree
    NeoTreeNormal = { fg = c.fg, bg = c.bg_accent },
    NeoTreeNormalNC = { fg = c.fg, bg = c.bg_accent },
    NeoTreeDirectoryIcon = { fg = c.orange },
    NeoTreeDirectoryName = { fg = c.fg_dim },
    NeoTreeRootName = { fg = c.fg, bold = true },
    NeoTreeGitAdded = { fg = c.green },
    NeoTreeGitModified = { fg = c.orange },
    NeoTreeGitDeleted = { fg = c.red },
    NeoTreeGitRenamed = { fg = c.green },
    NeoTreeGitUntracked = { fg = c.green },
    NeoTreeGitIgnored = { fg = c.gray },
    NeoTreeGitUnstaged = { fg = c.orange },
    NeoTreeGitStaged = { fg = c.green },
    NeoTreeGitConflict = { fg = c.red },

    -- Which-key
    WhichKey = { fg = c.orange },
    WhichKeyGroup = { fg = c.pink },
    WhichKeyDesc = { fg = c.fg },
    WhichKeySeparator = { fg = c.gray },

    -- Flash
    FlashLabel = { fg = c.bg, bg = c.orange, bold = true },
    FlashMatch = { fg = c.fg, bg = utils.shade(c.pink, 0.4, c.bg) },
    FlashCurrent = { fg = c.fg, bg = utils.shade(c.pink, 0.4, c.bg) },

    -- ColorfulWinSep
    ColorfulWinsep = { fg = c.pink_dark },
  }

  -- Apply overrides
  groups = vim.tbl_extend(
    'force',
    groups,
    type(config.overrides) == 'function' and config.overrides() or config.overrides
  )

  for group, parameters in pairs(groups) do
    vim.api.nvim_set_hl(0, group, parameters)
  end
end

function theme.setup(values)
  setmetatable(config, { __index = vim.tbl_extend('force', config.defaults, values or {}) })
end

function theme.colorscheme()
  if vim.version().minor < 8 then
    vim.notify('Neovim 0.8+ is required for amaranth', vim.log.levels.ERROR)
    return
  end

  vim.o.termguicolors = true
  vim.g.colors_name = 'amaranth'

  -- Clear highlights without disrupting treesitter
  vim.cmd('highlight clear')

  set_terminal_colors()
  set_groups()

end

return theme
