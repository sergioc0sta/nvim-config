set hidden " you can change other files before you save current file
set number " show numbers of lines
set relativenumber " show number relative of current line"set mouse=a "mouse availabel
set inccommand=split "find with regex and have preview where the code are changing

"define my leader key and made my preference config
let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>w :w<esc>
nnoremap <leader>q :q<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>



" add plugins
call plug#begin()

"Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'cohama/lexima.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'

call plug#end()

syntax enable
"colorscheme dracula
set background=dark
