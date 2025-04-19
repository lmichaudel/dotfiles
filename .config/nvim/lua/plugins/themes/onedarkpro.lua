return {
  "olimorris/onedarkpro.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    colors = {
      onedark = {
        bg = "#23272E",
        float_bg = "#23272E",
        bg_dark = "#1f2227"
      }
    },
    -- highlights = {
    --   CursorLineNr = {
    --     fg = { "${fg}" },
    --   },

    --   BufferCurrent = {
    --     bg = "${bg_dark}",
    --     fg = "${blue}"
    --   },
    --   BufferVisibleSign = {
    --     bg = "${bg_dark}",
    --     fg = "${bg_dark}",
    --   },
    --   BufferVisibleSignRight = {
    --     bg = "${bg_dark}",
    --     fg = "${bg_dark}",
    --   },
    --   BufferVisible = {
    --     bg = "${bg_dark}",
    --   },
    --   BufferOffset = {
    --     bg = "${bg_dark}",
    --     fg = "${bg_dark}",
    --   },
    --   BufferTabpageFill = {
    --     bg = "${bg_dark}",
    --     fg = "${bg_dark}",
    --   },
    --   BufferTabpage = {
    --     bg = "${bg_dark}",
    --     fg = "${bg_dark}",
    --   },
    --   BufferTabpagesSep = {
    --     bg = "${bg_dark}",
    --     fg = "${bg_dark}",
    --   },
    -- }
  },
  config = function(_, opts)
    require("onedarkpro").setup(opts)
  end
}
