vim.opt.relativenumber = true
vim.opt.nu = true
vim.opt.rnu = true

vim.cmd [[ let mapleader = "," ]]

-- nerdtree
vim.cmd [[ let g:NERDTreeWinPos = "right" ]]
vim.cmd [[ let g:NERDTreeLimitedSyntax = 1 ]]

-- colorscheme
vim.cmd [[ 
	colorscheme onedark
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

-- vim-devicons
vim.cmd [[ set encoding=UTF-8 ]]

-- telescope-fzf-native
-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')

-- vim-vue 
vim.cmd [[ 
  let g:polyglot_disabled = ['vue']
  let g:vue_pre_processors='detect_on_enter'
]]

