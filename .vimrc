""SuperVim""
set nocompatible 			 "vim自身命令行智能补全
filetype plugin on
set encoding=utf-8                       "使用utf-8编码
set number                               "显示行号
set showcmd                              "显示输入命令
set clipboard=unnamed,unnamedplus        "可以从vim复制到剪贴版中
set mouse=a                              "可以在buffer的任何地方使用鼠标
set cursorline                           "显示当前行
"set cursorcolumn 			 "显示当前列
set hlsearch                             "显示高亮搜索
set incsearch
set ruler                                "显示行号和列号
set pastetoggle=<F3>                     "F3快捷键于paste模式与否之间转化，防止自动缩进
set helplang=cn                          "设置为中文帮助文档,需下载并配置之后才生效
set shortmess=atI                        " 启动的时候不显示援助乌干达儿童的提示
set t_Co=256 				 "设置256色
set showmatch          		         "高亮括号匹配
set matchtime=1 	                 "匹配括号高亮的时间(十分之一秒)
set termguicolors                        "开启真彩色
syntax on                                "开启语法高亮
colorscheme dracula

"插件
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/junegunn/vim-easy-align'
Plug 'https://github.com/tpope/vim-rsi'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/Yggdroot/indentLine'
Plug 'https://github.com/itchyny/vim-cursorword'
Plug 'https://github.com/easymotion/vim-easymotion'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/brooth/far.vim'
Plug 'https://github.com/kien/ctrlp.vim'
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/junegunn/gv.vim'
Plug 'https://github.com/sbdchd/neoformat'
Plug 'https://github.com/w0rp/ale'
Plug 'https://github.com/lfv89/vim-interestingwords'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()






""""插件配置""""

""ale""
let g:ale_sign_column_always = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_set_quickfix = 1
let g:ale_open_list = 1"打开quitfix对话框

let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

let g:ale_sign_error = "➼"
let g:ale_sign_warning = "⚠"



""--airline--""
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
"let g:airline_powerline_fonts = 1
"let g:airline_theme='simple'
"let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
"let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'

