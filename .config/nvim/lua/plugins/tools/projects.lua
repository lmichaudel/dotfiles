return {
  "coffebar/neovim-project",
  opts = {
    last_session_on_startup = false,
    dashboard_mode = true,
    projects = {
      "~/dev/*",
      "~/.config/*",
      "~/prepa/info/TP/*"
    },
    picker = {
      type = "fzf-lua"
    }
  },
  init = function()
    vim.opt.sessionoptions:append("globals")
  end,
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "Shatur/neovim-session-manager" },
  },
}
