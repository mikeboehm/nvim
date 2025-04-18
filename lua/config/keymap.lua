vim.g.mapleader = " "

-- consistent C-c/Esc behavour
vim.keymap.set("i", "<C-c>", "<Esc>")

-- fast system clipboard yank prefix
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = 'Yank to clipboard' })
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p', { desc = 'Paste from clipboard' })

-- cursor up/down 5 lines
vim.keymap.set("", "<C-j>", "5j")
vim.keymap.set("", "<C-k>", "5k")
