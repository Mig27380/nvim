-- Ctrl + Enter to insert line
vim.keymap.set("n", "<C-CR>", "o<Esc>$")
vim.keymap.set("n", "<C-S-CR>", "O<Esc>$")

-- Disable arrow keys
vim.keymap.set("n", "<Down>", "<Nop>")
vim.keymap.set("n", "<Left>", "<Nop>")
vim.keymap.set("n", "<Up>", "<Nop>")
vim.keymap.set("n", "<Right>", "<Nop>")

--- Adjust system clipboard behavior ---
vim.keymap.set("n", "d", "\"_d")
vim.keymap.set("n", "c", "\"_c")
vim.keymap.set("n", "x", "\"_x")
vim.keymap.set("n", "s", "\"_s")

vim.keymap.set("n", "D", "\"_D")
vim.keymap.set("n", "C", "\"_C")
vim.keymap.set("n", "X", "\"_X")
vim.keymap.set("n", "S", "\"_S")

vim.keymap.set("v", "d", "\"_d")
vim.keymap.set("v", "c", "\"_c")
vim.keymap.set("v", "x", "\"_x")
vim.keymap.set("v", "s", "\"_s")

vim.keymap.set("v", "D", "\"_D")
vim.keymap.set("v", "C", "\"_C")
vim.keymap.set("v", "X", "\"_X")
vim.keymap.set("v", "S", "\"_S")

vim.keymap.set("v", "p", "\"_dp")

-- Yank on delete/paste
vim.keymap.set("v", "<C-x>", "d")
vim.keymap.set("v", "<C-p>", "p")

-- Navigate around
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Save
vim.keymap.set("n", "<leader>w", ":w<CR>")
-- Quit
vim.keymap.set("n", "<leader>qq", ":qa<CR>")
-- Neotree
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>")
-- Terminal
vim.keymap.set("n", "<C-/>", ":ToggleTerm<CR>")
