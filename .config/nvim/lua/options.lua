local opt = vim.opt
local o = vim.o
local g = vim.g

-- colors & theme
o.termguicolors = true

-- Status and Tab line
o.laststatus = 3
o.showtabline = 0

-- Cliboard
o.clipboard = "unnamedplus"
o.cursorline = true
o.cursorlineopt = "number"

-- Indenting
o.expandtab = true
o.shiftwidth = 2
o.smartindent = true
o.tabstop = 2
o.softtabstop = 2


o.ignorecase = true
o.smartcase = true
o.mouse = "a"

o.number = true
o.numberwidth = 2
o.ruler = false

opt.fillchars = { eob = " " }
opt.completeopt = { "menu", "menuone" }
opt.shortmess:append "csI"

o.signcolumn = "no"
o.splitbelow = true
o.splitright = true
o.timeoutlen = 400
o.undofile = true
o.undodir = '/Users/lucas/.cache/nvim/undodir'
o.autoread = true
o.swapfile = false

-- go to previous/next line with h,l
opt.whichwrap:append "<>[]hl"

-- disable tree
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
