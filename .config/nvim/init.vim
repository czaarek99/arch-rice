set tabstop=4
set softtabstop=4
set shiftwidth=4
set colorcolumn=100
set noexpandtab
set cmdheight=2
set background=dark
set signcolumn=yes
set scrolloff=10
set expandtab
set autoindent
set smartindent
set lazyredraw
set noshowmode
set undofile
set number relativenumber
set nohlsearch
set termguicolors
set nowrap
set ignorecase
set smartcase
set hidden
set cursorline
set sessionoptions+=tabpages,globals

highlight ColorColumn ctermbg=0 guibg=lightgrey
autocmd BufWritePre * %s/\s\+$//e
autocmd CursorHold * silent call CocActionAsync('highlight')
au TermOpen * setlocal nonumber norelativenumber
au FocusLost * :wa

noremap <C-p> :GFiles<CR>
noremap π :GFiles?<CR>
tnoremap <Esc> <C-\><C-n>
nmap <silent>gd <Plug>(coc-definition)
nmap <leader>rn <Plug>(coc-rename)
nnoremap <silent>gr :execute "Ag " . expand("<cword>")<CR>
map <C-n> :NERDTreeToggle<CR>

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()

cnoreabbrev b Buffers
cnoreabbrev buffers Buffers

let g:far#source = "acknvim"
let g:ackprg = 'ag --nogroup --nocolor --column --ignore-dir={node_modules,dist,lib,javascript}'
let g:ctrlp_working_path_mode = 'r'
let g:quickhl_cword_enable_at_startup = 1
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1
let g:netrw_banner = 0


let g:airline_mode_map =  {
  \ '__' : '------',
  \ 'c'  : 'COMMAND',
  \ 'i'  : 'INSERT',
  \ 'ic' : 'INSERT',
  \ 'ix' : 'INSERT',
  \ 'multi' : 'MULTI',
  \ 'n'  : 'NORMAL',
  \ 'ni' : '(INSERT)',
  \ 'no' : 'OP PENDING',
  \ 'R'  : 'REPLACE',
  \ 'Rv' : 'V REPLACE',
  \ 's'  : 'SELECT',
  \ 'S'  : 'S-LINE',
  \ '' : 'S-BLOCK',
  \ 't'  : 'TERMINAL',
  \ 'v'  : 'VISUAL',
  \ 'V'  : 'V-LINE',
  \ '' : 'V-BLOCK',
\ }

call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-obsession'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline-themes'
Plug 'frankier/neovim-colors-solarized-truecolor-only'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'brooth/far.vim'
Plug 'pangloss/vim-javascript'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'gcmt/taboo.vim'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

call plug#end()

colorscheme solarized
