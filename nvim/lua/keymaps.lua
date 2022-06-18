local function map(mode, shortcut, command, n_recursive)
	vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = n_recursirve })
end

local function nmap(shortcut, command, n_recursive)
	map('n', shortcut, command, n_recursive)
end

local function imap(shortcut, commands, n_recursive)
	map('i', shortcut, command, n_recursive)
end


nmap("<leader>n", ":NERDTree<CR>", true)

-- move between windows
nmap("<C-j>", "<C-W>j", true)
nmap("<C-k>", "<C-W>k", true)
nmap("<C-h>", "<C-W>h", true)
nmap("<C-l>", "<C-W>l", true)

-- map search
nmap("<space>", "/", true)

-- map move line
nmap("<C-Up>", ":m .-2<CR>", true)
nmap("<C-Down>", ":m .+1<CR>", true)

-- map fzf
nmap("<C-f>", ":FZF<CR>")

-- telescope
nmap("<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", true)
nmap("<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", true)
nmap("<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>", true)
nmap("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", true)
