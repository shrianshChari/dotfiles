require('noice').setup({
  presets = {
    long_message_to_split = true,
  },
  lsp = {
    hover = {
      enabled = false,
    }
  },
  views = {
    hover = {
      border = {
        style = "rounded",
      },
    },
  },
})
