call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'w0ng/vim-hybrid'
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries' }
call plug#end()

syntax on
colorscheme hybrid
set background=dark

map <C-n> :NERDTreeToggle<CR>
set modifiable
set shiftwidth=4 "缩进空格数
set tabstop=4 "硬TAB
set softtabstop=4 "软TAB
set smarttab "智能TAB

"自动缩进
set autoindent
" 关闭声音
set noeb vb t_vb=

set nu

" 调整窗口移动
nnoremap H <C-w>h
nnoremap J <C-w>j
nnoremap K <C-w>k
nnoremap L <C-w>l
" 快速保存
inoremap jk <esc>:w<cr>
nnoremap <esc> :w<cr>
inoremap <esc> <esc>:w<cr>
" 括号补全
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR>}<ESC>O

set scrolloff=5
