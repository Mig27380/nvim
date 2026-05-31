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

vim.keymap.set({"i", "t"}, "<C-h>", "<C-\\><C-n><C-w>h")
vim.keymap.set({"i", "t"}, "<C-j>", "<C-\\><C-n><C-w>j")
vim.keymap.set({"i", "t"}, "<C-k>", "<C-\\><C-n><C-w>k")
vim.keymap.set({"i", "t"}, "<C-l>", "<C-\\><C-n><C-w>l")

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
vim.keymap.set("n", "<A-S-->", "<cmd>resize -4<cr>")
vim.keymap.set("n", "<A-S-=>", "<cmd>resize +4<cr>")
vim.keymap.set("n", "<A-->", "<cmd>vertical resize -4<cr>")
vim.keymap.set("n", "<A-=>", "<cmd>vertical resize +4<cr>")

-- Bufferline
vim.keymap.set("n", "H", "<Cmd>BufferLineCyclePrev<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "L", "<Cmd>BufferLineCycleNext<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>bd", function() Snacks.bufdelete() end)

-- LSP
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
vim.keymap.set("n", "gr", function() Snacks.picker.lsp_references({ layout = { preset = "select" } }) end, { desc = "References" })

vim.keymap.set("n", "gu", function() Snacks.picker.lsp_references() end, { desc = "References" })

vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, { desc = "Type definition" })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })
vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "Signature help" })
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, { desc = "Diagnostic float" })

-- Java (nvim-java)
vim.keymap.set("n", "<leader>jr", function() require("java").runner.built_in.run_app({}) end, { desc = "Run Java app" })
vim.keymap.set("n", "<leader>jR", function() require("java").runner.built_in.stop_app() end, { desc = "Stop Java app" })
vim.keymap.set("n", "<leader>jt", function() require("java").test.run_current_class() end, { desc = "Run test class" })
vim.keymap.set("n", "<leader>jT", function() require("java").test.debug_current_class() end, { desc = "Debug test class" })
vim.keymap.set("n", "<leader>jm", function() require("java").test.run_current_method() end, { desc = "Run test method" })
vim.keymap.set("n", "<leader>jM", function() require("java").test.debug_current_method() end, { desc = "Debug test method" })
vim.keymap.set("n", "<leader>ja", function() require("java").test.run_all_tests() end, { desc = "Run all tests" })
vim.keymap.set({ "n", "v" }, "<leader>jv", function() require("java").refactor.extract_variable() end, { desc = "Extract variable" })
vim.keymap.set({ "n", "v" }, "<leader>jc", function() require("java").refactor.extract_constant() end, { desc = "Extract constant" })
vim.keymap.set({ "n", "v" }, "<leader>jf", function() require("java").refactor.extract_field() end, { desc = "Extract field" })
vim.keymap.set({ "n", "v" }, "<leader>je", function() require("java").refactor.extract_method() end, { desc = "Extract method" })
vim.keymap.set("n", "<leader>jp", function() require("java").profile.ui() end, { desc = "Java profiles" })
vim.keymap.set("n", "<leader>js", function() require("java").settings.change_runtime() end, { desc = "Switch JDK" })
