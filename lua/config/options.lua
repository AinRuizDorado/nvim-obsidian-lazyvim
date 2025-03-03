-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
-- vim.cmd([[set termguicolors]])
opt.termguicolors = true
opt.cursorline = false -- Enable highlighting of the current line
opt.expandtab = false -- Use spaces instead of tabs

-- If you are in Linux you need to install xclip to the clipboard to work
vim.opt.clipboard = "unnamedplus"

opt.smartindent = true
opt.wrap = true

---- Important Grammar and spell check
opt.spelllang = "es"
opt.spell = true

-- Search

opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.completeopt = "menuone,noselect"

-- Behaviour

opt.errorbells = false
--opt.backspace = "indent, eol, start"
opt.modifiable = true
--opt.guicursor = true
opt.encoding = "UTF-8"
