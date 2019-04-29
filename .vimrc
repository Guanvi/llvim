""------------------""
""----llvim----""

set nocompatible 			                   "vim自身命令行智能补全 
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
set t_Co=256 				                     "设置256色
set showmatch          		         "高亮括号匹配
set matchtime=1 	                 "匹配括号高亮的时间(十分之一秒)
set termguicolors                        "开启真彩色
syntax on                                "开启语法高亮
                                      

"colorscheme Tomorrow-Night-Bright       "设置vim主题
colorscheme molokai_dark                 "设置vim主题

silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)



call plug#begin('~/.vim/plugged')
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/tpope/vim-unimpaired.git'
Plug 'https://github.com/tpope/vim-rails.git'
Plug 'https://github.com/tpope/vim-repeat.git'
Plug 'https://github.com/tpope/vim-bundler.git'
Plug 'https://github.com/tpope/vim-abolish.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/nelstrom/vim-visual-star-search.git'
"Plug 'https://github.com/kana/vim-textobj-entire.git'
Plug 'junegunn/vim-easy-align'
Plug 'mattn/emmet-vim'
Plug 'https://github.com/suan/vim-instant-markdown.git'
Plug 'plasticboy/vim-markdown'
Plug 'https://github.com/flazz/vim-colorschemes.git'
Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'https://github.com/w0rp/ale.git'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
call plug#end()



"""""""""""""""""""""""""
""""插件配置""""

""--coc.nvim--""

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()



""<cr>确认
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

""完成后关闭预览窗口
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif




""--airline--""
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1
let g:airline_theme='simple'

"let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
"let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'


""--ale--""
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
"highlight clear ALEErrorSign
"highlight clear ALEWarningSign
let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_text_changed = 'never' 	            "文件内容发生变化时不进行检测
let g:ale_lint_on_enter = 1 		                    "打开文件就进行检查
"let g:ale_sign_column_always = 1 	                    "始终开启检查
let g:ale_set_highlights = 1
highlight ALEWarning ctermbg=240                        "设置警告背景颜色"
highlight ALEError ctermbg=240                          "设置错误背景颜色"
highlight ALEWarningSign ctermfg=226                    "设置警告标志前景颜色"
highlight ALEErrorSign ctermfg=124                      "设置错误标志前景颜色"


""--auto-pairs--"
let g:AutoPairsFlyMode = 1
