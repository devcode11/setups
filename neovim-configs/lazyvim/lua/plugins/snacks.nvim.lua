return {
  "folke/snacks.nvim",
  opts = {
    dashboard = { enabled = false },
    picker = {
      layout = {
        preset = "ivy_split",
      },
      formatters = {
        file = {
          truncate = 1000,
        },
      },
    },
  },
}
