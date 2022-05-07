call plug#begin()

Plug 'dense-analysis/ale'
Plug 'posva/vim-vue'
Plug 'morhetz/gruvbox'
"Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'joshdick/onedark.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'branch': 'release/0.x'
  \ }
Plug 'itchyny/lightline.vim'

call plug#end()

:let mapleader = ","

" posva/vim-vue slow down
let g:vue_pre_processors = ['pug', 'scss']

" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab

" nerdtree
let g:NERDTreeWinPos = "right"

" lightline
set laststatus=2
let g:lightline={
      \ 'colorscheme': 'wombat',
      \ }

set incsearch
set hlsearch

" colorscheme
set bg=dark
colorscheme onedark

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  silent! %s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfun
  
if has("autocmd")
  autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif 

" persistent undo
set undofile
set undodir=~/.vim/undodir

" map commands

nnoremap <leader>n :NERDTree<CR>

" move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" map search
nmap <space> /

" map move line
map <C-Up> :m .-2<CR>
map <C-Down> :m .+1<CR>

set nofoldenable
set relativenumber
set nu rnu
