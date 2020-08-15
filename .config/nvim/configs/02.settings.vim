let mapleader = "\<Space>"
filetype plugin on
filetype plugin indent on

autocmd BufEnter * :set scroll=10
syntax on

set encoding=UTF-8
set mouse=a

set incsearch
set hlsearch

set tabstop=4
set softtabstop=0
set shiftwidth=4
set number relativenumber

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

inoremap jk <ESC>

" Delete current buffer
nnoremap <C-w> :bd<CR>

" Move line UP/DOWN
nnoremap <A-j> :move +1<CR>==
nnoremap <A-Down> :move +1<CR>==
nnoremap <A-k> :move -2<CR>==
nnoremap <A-Up> :move -2<CR>==
inoremap <A-j> <Esc>:move +1<CR>==gi
inoremap <A-Down> <Esc>:move +1<CR>==gi
inoremap <A-k> <Esc>:move -2<CR>==gi
inoremap <A-Up> <Esc>:move -2<CR>==gi

" Copy line UP/DOWN
nnoremap <A-S-Down> <Leader>yyp<CR>==
nnoremap <A-S-Up> <Leader>yyP<CR>==
inoremap <A-S-Down> <Esc><Leader>yyp<CR>==gi
inoremap <A-S-Up> <Esc><Leader>yyP<CR>==gi
