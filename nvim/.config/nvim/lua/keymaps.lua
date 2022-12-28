vim.g.mapleader = " "
local keymap = vim.keymap

--don't yank with x
keymap.set("n", "x", '"_x')

--increment / decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

--delete a word backwards
keymap.set("n", "dw", 'vb"_d')

--select all
keymap.set("n", "<C-a>", "gg<S-v>G")

--buffer movement
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "<C-h>", ":bp<CR>")
keymap.set("n", "<C-l>", ":bn<CR>")
keymap.set("n", "<C-w>", ":BD<CR>")

--searching movement
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzw")

--custom user keymap
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "ss", ":w<CR>")
keymap.set("n", "ww", ":q<CR>")

--window splitting
keymap.set("n", "<leader>sh", ":split<CR>", { silent = true })
keymap.set("n", "<leader>sv", ":vsplit<CR>", { silent = true })

--window movement
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sl", "<C-w>l")

--TermToggle keymap
keymap.set("n", "tt", ":ToggleTerm<CR>")
