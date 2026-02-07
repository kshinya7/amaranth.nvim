local config = {
  defaults = {
    transparent = false,
    italics = {
      comments = true,
    },
    overrides = {},
  },
}

setmetatable(config, { __index = config.defaults })

return config
