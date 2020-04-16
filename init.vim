" 通用设置
set modifiable
set shiftwidth=4 "缩进空格数
set tabstop=4 "硬TAB
set softtabstop=4 "软TAB
set smarttab "智能TAB
set nu
set noeb vb t_vb=
set syntax=on
set scrolloff=5
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set hidden

call plug#begin('~/.vim/plugged')
" 自动对其
Plug 'junegunn/vim-easy-align'
" 文件树
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" 代码检查
Plug 'dense-analysis/ale'
" 文件查找
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
" airlien
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" 自动补全
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" 主题
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'flazz/vim-colorschemes'

call plug#end()

" ale settting
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1

let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

" nerdtree setting
map <C-n> :NERDTreeToggle<CR>
nmap ga <Plug>(EasyAlign)
inoremap jk <esc>:w<cr>
nnoremap H <C-w>h
nnoremap J <C-w>j
nnoremap K <C-w>k
nnoremap L <C-w>l
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

" theme
colorscheme dracula
