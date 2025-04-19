local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("lazy").setup({
  spec = {
    { "nvim-tree/nvim-web-devicons" },
    { "mrjones2014/smart-splits.nvim" },

    { import = "plugins.themes" },
    { import = "plugins.lang.completion" },
    { import = "plugins.lang.treesitter" },
    { import = "plugins.tools.projects" },
    { import = "plugins.tools.fzf-lua" },
    { import = "plugins.tools.comment" },
    { import = "plugins.tools.oil" },
    --{ import = "plugins.ui.incline" },
    { import = "plugins.ui.lualine" }
  },

  install = { colorscheme = { "onedark" } },
  checker = { enabled = false },
})

local colorschemes = {
  ["onedark"] = "onedarkpro",
  ["gruvbox-material"] = "gruvbox_material_dark_medium",
  ["onedarkpro"] = "onedark",
  ["gruvbox_material_dark_medium"] = "gruvbox-material",
}

vim.api.nvim_create_autocmd("ColorScheme", {
  group = vim.api.nvim_create_augroup("wezterm_colorscheme", { clear = true }),
  callback = function(args)
    local colorscheme = colorschemes[args.match]
    if not colorscheme then
      return
    end

    local filename = vim.fn.expand("~/.config/wezterm/colorscheme")
    assert(type(filename) == "string")
    local file = io.open(filename, "w")
    assert(file)
    file:write(colorscheme)
    file:close()
  end,
})

local filename = vim.fn.expand("~/.config/wezterm/colorscheme")
assert(type(filename) == "string")
local file = io.open(filename, "r")
assert(file)
vim.cmd("colorscheme " .. colorschemes[file:read('l')])

require("mappings")
require("options")
require("lsp")
