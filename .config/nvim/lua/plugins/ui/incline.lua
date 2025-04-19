return {
  'b0o/incline.nvim',
  config = function()
    require('incline').setup {
      hide = {
        cursorline = false,
        focused_win = false,
        only_win = false,
      },
      window = {
        padding = 0,
        margin = {
          horizontal = 0,
          vertical = 0
        },
        options = {
          signcolumn = "no",
          wrap = false
        },
        overlap = { tabline = false, winbar = false, borders = false, statusline = false },
        placement = {
          horizontal = "right",
          vertical = "top"
        },
        width = "fill"
      },
      render = function(props)
        local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ':~')
        if filename == '~' then filename = '' end
        return {
          { filename },
          guibg = '#44406e',
        }
      end,
    }
  end
}
