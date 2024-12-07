---------------------
-- setup/boilerplate
---------------------
local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

---------------------
-- leader key
---------------------
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

---------------------
-- MODE LIST
---------------------
-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

---------------------
-- non-addon keybinds
---------------------

-- bad habit prevention
keymap("n", "<Left>", ':echoe "Use h"<CR>', opts)
keymap("n", "<Right>", ':echoe "Use l"<CR>', opts)
keymap("n", "<Up>", ':echoe "Use k"<CR>', opts)
keymap("n", "<Down>", ':echoe "Use j"<CR>', opts)
keymap("i", "<Left>", '<ESC>:echoe "Use h"<CR>', opts)
keymap("i", "<Right>", '<ESC>:echoe "Use l"<CR>', opts)
keymap("i", "<Up>", '<ESC>:echoe "Use k"<CR>', opts)
keymap("i", "<Down>", '<ESC>:echoe "Use j"<CR>', opts)

-- buffer switching
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- better window switching
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- better window resize
keymap("n", "<C-Up>", ":resize +1<CR>", opts)
keymap("n", "<C-Down>", ":resize -1<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -1<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +1<CR>", opts)

-- wrapping toggle
keymap("n", "<leader>ra", ":set wrap!<CR>", opts)

-- stay in visual selection after indent
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)

keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>h", term_opts)

-- Telescope keybinds
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<leader>F", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>S", "<cmd>Telescope grep_string<cr>", opts)
keymap("n", "<leader>H", "<cmd>lua require'telescope.builtin'.live_grep({grep_open_files=true})<cr>", opts)

-- Nvimtree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Toggle line numbers
keymap("n", "<leader>tn", "<cmd>set number! | set relativenumber! | execute 'set signcolumn=' . (&signcolumn == 'yes' ? 'no' : 'yes')<cr>", opts)

-- Latex preview
keymap("n", "<leader>la", "<cmd>LLPStartPreview<cr>", opts)

-- buffer deletion
keymap("n", "<leader>q", "<cmd>Bdelete<cr>", opts)

-- black-nvim
keymap("n", "<leader>bl", "<cmd>Black<cr>", opts)

