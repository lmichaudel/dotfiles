-- LAZY
require("lazy.view.config").keys.close = "<Esc>"
vim.keymap.set("n", "<leader>p", "<CMD>Lazy<CR>")

-- SAVE
vim.keymap.set("n", "<D-s>", "<cmd>w<CR>")

-- SEARCH
vim.keymap.set("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

-- MOVEMENT
vim.keymap.set('i', '<A-h>', '<Left>')
vim.keymap.set('i', '<A-j>', '<Down>')
vim.keymap.set('i', '<A-k>', '<Up>')
vim.keymap.set('i', '<A-l>', '<Right>')

-- RUN
vim.keymap.set("n", "<F4>", "<cmd>make<cr>")
vim.keymap.set("n", "<F5>", "<cmd>!ocaml %:p<cr>")

-- INDENT
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- SPLITS, WINDOW, BUFFER
vim.keymap.set('n', '<C-h>', require('smart-splits').resize_left)
vim.keymap.set('n', '<C-j>', require('smart-splits').resize_down)
vim.keymap.set('n', '<C-k>', require('smart-splits').resize_up)
vim.keymap.set('n', '<C-l>', require('smart-splits').resize_right)
--
vim.keymap.set('n', 'H', require('smart-splits').move_cursor_left, { noremap = true })
vim.keymap.set('n', 'J', require('smart-splits').move_cursor_down, { noremap = true })
vim.keymap.set('n', 'K', require('smart-splits').move_cursor_up, { noremap = true }) -- TODO conflict with lsp
vim.keymap.set('n', 'L', require('smart-splits').move_cursor_right, { noremap = true })
--
vim.keymap.set('n', '<leader><leader>h', require('smart-splits').swap_buf_left)
vim.keymap.set('n', '<leader><leader>j', require('smart-splits').swap_buf_down)
vim.keymap.set('n', '<leader><leader>k', require('smart-splits').swap_buf_up)
vim.keymap.set('n', '<leader><leader>l', require('smart-splits').swap_buf_right)
--
vim.keymap.set('n', '<A-ù>', '<cmd>vsplit<cr>')
vim.keymap.set('n', '<A-$>', '<cmd>split<cr>')
vim.keymap.set('n', '<A-q>', '<cmd>q<cr>')

-- OIL
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Oil" })

-- SEARCH
vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<cr>")
vim.keymap.set("n", "<leader>fh", "<cmd>FzfLua oldfiles<cr>")
vim.keymap.set("n", "<leader>fp", "<cmd>NeovimProjectDiscover<cr>")
-- vim.keymap.set("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols <cr>", { desc = "Find Symbol" })
vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua live_grep <cr>")
-- vim.keymap.set("n", "<leader>f:", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "Fuzzy find in Buffer" })

-- TABS
vim.keymap.set("n", "<left>", "<cmd>tabprevious<cr>")
vim.keymap.set("n", "<right>", "<cmd>tabnext<cr>")
vim.keymap.set("n", "<up>", "")
vim.keymap.set("n", "<down>", "")
