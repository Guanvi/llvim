""""""""Luohua"""""""'
set nocompatible 
filetype plugin on 
set encoding=utf-8                       "使用utf-8编码
set number                               "显示行号
set showcmd                              "显示输入命令
set clipboard=unnamed,unnamedplus        "可以从vim复制到剪贴版中
set mouse=a                              "可以在buffer的任何地方使用鼠标
"set cursorline                           "显示当前行
set hlsearch                             "显示高亮搜索
set incsearch
set ruler                                "显示行号和列号
set pastetoggle=<F3>                     "F3快捷键于paste模式与否之间转化，防止自动缩进
set helplang=cn                          "设置为中文帮助文档,需下载并配置之后才生效
set shortmess=atI                        " 启动的时候不显示援助乌干达儿童的提示
set t_Co=256 				 "设置256色
set showmatch          		         "高亮括号匹配
set matchtime=1 	                 "匹配括号高亮的时间(十分之一秒)


colorscheme Tomorrow-Night-Bright



call plug#begin('~/.vim/plugged')
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/tpope/vim-unimpaired.git'
Plug 'https://github.com/tpope/vim-rails.git'
Plug 'https://github.com/tpope/vim-bundler.git'
Plug 'https://github.com/tpope/vim-abolish.git'
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
call plug#end()



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




""airline""
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1
let g:airline_theme='simple'

"let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
"let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'


