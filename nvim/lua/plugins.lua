local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
vim.cmd [[
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
]]
vim.cmd [[ Plug 'prettier/vim-prettier', {
	\ 'do': 'yarn install --frozen-lockfile --production',
	\ 'branch': 'release/0.x'
	\ } ]]
Plug 'junegunn/fzf'
Plug 'dense-analysis/ale'
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'
Plug 'windwp/nvim-autopairs'

vim.call('plug#end')
