-- for conciseness
local opt = vim.opt
-- local api = vim.api
-- local cmd = vim.cmd

vim.g.mapleader = " "

-- no swap file
opt.swapfile = false
-- auto write file on switch
opt.autowrite = true

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.updatetime = 100

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- so that dashes are considered part of the word
opt.iskeyword:append("-")

-- improve screen refresh for terminal vim
opt.ttyfast = true

-- don't redraw while executing macros. async window title update
opt.lazyredraw = false -- set to false b/c of Noice plugin

-- start scrolling 3 lines from bottom
opt.scrolloff = 3
opt.sidescrolloff = 6
