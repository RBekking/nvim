set nu
set rnu
set nowrap
set scrolloff=3
set foldmethod=manual
set colorcolumn=79
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab
set ma
set ignorecase smartcase
set autochdir
set splitright
set splitbelow
set autowrite
set hidden
setlocal spell spelllang=en_us


" Plugins

call plug#begin('~\AppData\Local\nvim\plugged')
Plug 'joshdick/onedark.vim'
Plug 'iCyMind/NeoSolarized'
Plug 'morhetz/gruvbox'
Plug 'sickill/vim-monokai' 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'zchee/deoplete-jedi'
Plug 'sbdchd/neoformat'
Plug 'davidhalter/jedi-vim'
Plug 'neomake/neomake'
Plug 'tmhedberg/SimpylFold'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
call plug#end()

colo onedark

let g:python3_host_prog = "C:/Windows/python.exe"
let g:python2_host_prog = "C:/Windows/python.exe"

" Jedi
let g:jedi#completions_enabled = 0
let g:jedi#use_splits_not_buffers = "top"
let g:jedi#show_call_signature = 1

" Deoplete
let g:deoplete#enable_at_startup = 1

" Neomake
let g:neomake_python_enabled_makers = ['flake8']
call neomake#configure#automake('nrwi', 500)

" Mappings

" Surround selection with pairing characters
xnoremap <Leader>s( xi()<Esc>P
xnoremap <Leader>s[ xi[]<Esc>P
xnoremap <Leader>s{ xi{}<Esc>P
xnoremap <Leader>s' xi''<Esc>P
xnoremap <Leader>s` xi``<Esc>P
xnoremap <Leader>s" xi""<Esc>P
xnoremap <Leader>s< xi<><Esc>P

" Cancel search highlight
noremap <Leader><CR> :nohl<CR>

" Tab completion 
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Autoformat by pressing =
noremap = :Neoformat<CR>

" Moving between any window with Alt+hjkl (including a terminal buffer)
tnoremap <Esc> <C-\><C-N>
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
