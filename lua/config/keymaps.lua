-- Disable arrow keys
vim.keymap.set("n", "<Down>", "<Nop>")
vim.keymap.set("n", "<Left>", "<Nop>")
vim.keymap.set("n", "<Up>", "<Nop>")
vim.keymap.set("n", "<Right>", "<Nop>")

-- Ctrl + Enter to insert line
vim.keymap.set("n", "<C-CR>", "o<Esc>$")
vim.keymap.set("n", "<A-CR>", "O<Esc>$")

--- Adjust system clipboard behavior ---
vim.keymap.set({"n", "v"}, "d", "\"_d")
vim.keymap.set({"n", "v"}, "c", "\"_c")
vim.keymap.set({"n", "v"}, "x", "\"_x")
vim.keymap.set({"n", "v"}, "s", "\"_s")

vim.keymap.set({"n", "v"}, "D", "\"_D")
vim.keymap.set({"n", "v"}, "C", "\"_C")
vim.keymap.set({"n", "v"}, "X", "\"_X")
vim.keymap.set({"n", "v"}, "S", "\"_S")

-- Substitute without yank, paste only before cursor on visual mode
vim.keymap.set("v", "p", "\"_dP")

-- Yank on delete/paste
vim.keymap.set("v", "<C-x>", "d")
vim.keymap.set("v", "<C-p>", "p")

-- Navigate around
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Better indent
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Move lines up or down
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")
vim.keymap.set("n", "<A-J>", ":m .+1<CR>==")
vim.keymap.set("n", "<A-K>", ":m .-2<CR>==")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Save
vim.keymap.set("n", "<leader>w", function()
  if vim.bo.modified then
    vim.cmd("write")
    vim.notify("💾 File saved", vim.log.levels.INFO, {
      title = "Save",
      timeout = 2500,
    })
  end
end)

-- Quit
vim.keymap.set("n", "<leader>qq", "<cmd>qa<CR>")

-- Neotree
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>")

-- Terminal
vim.keymap.set({"n", "t"}, "<C-/>", function() Snacks.terminal() end)

-- Resize windows
vim.keymap.set("n", "<A-S-->", "<cmd>resize -2<cr>")
vim.keymap.set("n", "<A-S-=>", "<cmd>resize +2<cr>")
vim.keymap.set("n", "<A-->", "<cmd>vertical resize -2<cr>")
vim.keymap.set("n", "<A-=>", "<cmd>vertical resize +2<cr>")

-- Bufferline
vim.keymap.set("n", "H", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "L", "<Cmd>BufferLineCycleNext<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>bd", function() Snacks.bufdelete() end)
