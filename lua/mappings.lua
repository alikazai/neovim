require "nvchad.mappings"

local map = vim.keymap.set

-- General
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-z>","<nop>", {desc = "Nothing"})

-- LazyGit
map ("n", "<leader>gg", "<cmd>LazyGit<cr>", {desc = "LazyGit"})
