" super cenas mistas
set hidden " you can change other files before you save current file
set number " show numbers of lines
set relativenumber " show number relative of current line"set mouse=a "mouse availabel
set inccommand=split "find with regex and have preview where the code are changing
set splitright
set splitbelow

"define my leader key and made my preference config
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle

let mapleader="\<space>"
nnoremap <leader>; A;<esc>
nnoremap <leader>w :w<esc>
nnoremap <leader>q :q<esc>
nnoremap <leader>ns :vsplit<CR>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>
nnoremap <leader>b :NERDTreeToggle<CR>
nnoremap <leader>t :call OpenTerminal()<CR>
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>0 :tablast<cr>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

function! OpenTerminal()
  split term://bash
  resize 10
endfunction

tnoremap <Esc> <C-\><C-n>
" use alt+hjkl to move between split/vsplit panels
" add plugins
call plug#begin()

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
Plug 'cohama/lexima.vim'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
"Plug 'honza/vim-snippets'
"Plug 'SirVer/ultisnips'

call plug#end()

syntax enable
colorscheme dracula
set background=dark
"let g:UltiSnipsEditSplit="vertical"
"let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'
