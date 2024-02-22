vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- general keymaps
keymap.set("i", "jj", "<ESC>")
-- toggle paste mode
keymap.set("n", "<F6>", ":set paste!")
-- clear out highlights
keymap.set("n", "<F7>", ":nohl<CR>")
-- swap to previous file
keymap.set("n", "<leader><leader>", "<c-^>")
-- deleting single characters, but doesn't copy into register
keymap.set("n", "x", '"_x')
-- incrementing and decrementing numbers
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- window management
keymap.set("n", "<leader>v", "<C-w>v")     -- vertical split
keymap.set("n", "<leader>h", "<C-w>s")     -- horizontal split
keymap.set("n", "<leader>e", "<C-w>=")     -- make splits same size
keymap.set("n", "<leader>x", ":close<CR>") -- close current split

-- tab management
keymap.set("n", "<leader>t", ":tabnew<CR>")   -- open a new tab
keymap.set("n", "<leader>w", ":tabclose<CR>") -- close the current tab
keymap.set("n", "<leader>]", ":tabn<CR>")     -- next tab
keymap.set("n", "<leader>[", ":tabp<CR>")     -- previous tab

-- Toggle Paste Mode Mapping
keymap.set("n", "<F6>", ":set paste!<CR>", { noremap = true, silent = true })

-- Toggle No Highlight Mode Mapping
keymap.set("n", "<F7>", ":noh<CR>", { noremap = true, silent = true })

-- Quick Switch File Mapping
keymap.set("n", "<leader><leader>", "<C-^>", { noremap = true, silent = true })

-- Mappings for Moving Lines
keymap.set("n", "<S-k>", ":m-2<CR>", { noremap = true, silent = true })
keymap.set("n", "<S-j>", ":m+<CR>", { noremap = true, silent = true })
-- Move selected text down
keymap.set("v", "<S-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
-- Move selected text up
keymap.set("v", "<S-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Quickfix List Navigation
--
-- what other options are there for this, other than ]q and [q
keymap.set("n", "<C-]>", ":cnext<CR>", { noremap = true, silent = true })
keymap.set("n", "<C-[>", ":cprev<CR>", { noremap = true, silent = true })
