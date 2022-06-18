vim.opt.relativenumber = true
vim.opt.nu = true
vim.opt.rnu = true

vim.cmd [[ let mapleader = "," ]]

-- nerdtree
vim.cmd [[ let g:NERDTreeWinPos = "right" ]]

-- colorscheme
vim.cmd [[ 
	colorscheme gruvbox
	set background=dark
]]

-- lightline
vim.cmd [[
	set laststatus=2
	let g:lightline={
				\ 'colorscheme': 'wombat',
				\ }
]]

-- persistent undo
vim.opt.undofile = true
vim.cmd [[ set undodir=~/.config/nvim/undodir ]]

-- nvim-autopairs
require('nvim-autopairs').setup{}

-- fzf
vim.g.fzf_layout = { window = { width = 0.8, height = 0.8 } }
