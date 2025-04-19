return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  branch = "0.1.x",
  dependencies = {
    "nvim-telescope/telescope-ui-select.nvim",
    "nvim-tree/nvim-web-devicons",
    "nvim-lua/plenary.nvim",
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make"
    },
    {
      "coffebar/neovim-project",
      cmd = "Telescope",
      dependencies = {
        { "Shatur/neovim-session-manager" },
      },
      priority = 100,
      opts = {
        projects = {
          "~/dev/*",
          "~/MP2I/info/TP/*",
          "~/MP2I/info/sup/TP/*",
          "~/TIPE/*"
        },
        last_session_on_startup = false,
        dashboard_mode = true
      },
      init = function()
        vim.opt.sessionoptions:append("globals")
      end
    },
    {
      "SantinoKeupp/telescope-cmake4vim.nvim"
    }
  },
  opts = {
    defaults = {
      winblend = 0,
      border = {},
      color_devicons = true,
      set_env = { ["COLORTERM"] = "truecolor" },
      borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
      prompt_prefix = " 󰍉  ",
      sorting_strategy = "ascending",
      layout_strategy = "horizontal",
      path_display = { "truncate" },
      layout_config = {
        horizontal = {
          prompt_position = "top",
          preview_width = 0.55,
          results_width = 0.8,
        },
        vertical = {
          mirror = false,
        },
        width = 0.87,
        height = 0.80,
        preview_cutoff = 120,
      },
      file_ignore_patterns = {
        ".build/*",
        "lib/*/",
      },
      mappings = {
        i = {
          ["<esc>"] = "close"
        }
      }
    }
  },
  config = function(_, opts)
    opts.extensions = {
      ["ui-select"] = {
        require("telescope.themes").get_dropdown(),
      },
      fzf = {},
      wrap_results = true
    }

    require("telescope").setup(opts)
    pcall(require("telescope").load_extension, "fzf")
    pcall(require("telescope").load_extension, "ui-select")
    pcall(require("telescope").load_extension, "cmake4vim")
  end
}
