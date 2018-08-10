""""""""Luohua"""""""'
set nocompatible 
filetype plugin on 
set encoding=utf-8                       "使用utf-8编码
set number                               "显示行号
set showcmd                              "显示输入命令
set clipboard=unnamed,unnamedplus        "可以从vim复制到剪贴版中
set mouse=a                              "可以在buffer的任何地方使用鼠标
set cursorline                           "显示当前行
set hlsearch                             "显示高亮搜索
set incsearch
set ruler                                "显示行号和列号
set pastetoggle=<F3>                     "F3快捷键于paste模式与否之间转化，防止自动缩进
set helplang=cn                          "设置为中文帮助文档,需下载并配置之后才生效
set shortmess=atI                        " 启动的时候不显示援助乌干达儿童的提示
"syntax on                                " 语法高亮
autocmd InsertEnter * se cul             "用浅色高亮当前行
set showcmd                              " 输入的命令显示出来，看的清楚些
set foldenable                           " 允许折叠
set foldmethod=indent                    " 手动折叠
set t_Co=256 				                     "设置256色
set history=200			                     "保存200条Ex命令
runtime macros/matchit.vim 		           "用%在关键字之间跳转




""""""""主题颜色""""""""
"colorschem molokai
colorschem Tomorrow-Night-Eighties
"syntax enable
"set background=dark
"colorscheme solarized
"hi String ctermfg=255 ctermbg=135
"hi LinerNr ctermfg=90 ctermbg=0




call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

Plug 'scrooloose/nerdtree'

Plug 'https://github.com/w0rp/ale.git'

"Plug 'https://github.com/Valloric/YouCompleteMe.git'

"Plug 'https://github.com/tomasr/molokai.git'

Plug 'https://github.com/majutsushi/tagbar.git'

Plug 'https://github.com/vim-airline/vim-airline.git'

Plug 'https://github.com/vim-airline/vim-airline-themes.git'

Plug 'https://github.com/severin-lemaignan/vim-minimap.git'

"Plug 'https://github.com/trusktr/seti.vim.git'

"Plug 'https://github.com/altercation/solarized.git'

Plug 'https://github.com/tpope/vim-commentary.git'

"Plug 'itchyny/lightline.vim'

"Plug 'maximbaz/lightline-ale'

"Plug 'https://github.com/ryanoasis/nerd-fonts.git'

Plug 'https://github.com/tpope/vim-unimpaired.git'

Plug 'https://github.com/tpope/vim-surround.git'

Plug 'https://github.com/tpope/vim-rails.git'

"其他插件......"



call plug#end()

nmap <F8> :TagbarToggle<CR>                 "F8打开Tagbar
map <C-n> :NERDTreeToggle<CR>               "Ctrl+n打开Nerdtree
map mm :Minimap<CR>                         "打开右侧Minimap
map mc :MinimapClose<CR>                    "关闭右侧Minimap



"""""""""YouCompletMe""""""""
let g:ycm_enable_diagnostic_signs = 0    "关闭YCM的语法检测
let g:ycm_server_python_interpreter='/usr/bin/python'"
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
" 输入第一个字符就开始补全
let g:ycm_min_num_of_chars_for_completion=1

" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1

" Ctrl + a 触发补全
let g:ycm_key_invoke_completion = '<C-a>'

"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt=longest,menu

autocmd InsertLeave * if pumvisible() == 0|pclose|endif         "离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"    "回车即选中当前项





""""""""""ale""""""""""
let g:ale_sign_column_always = 1
let g:ale_sign_error = '->'
let g:ale_sign_warning = '-!'
highlight clear ALEErrorSign
highlight clear ALEWarningSign
" Set this in your vimrc file to disabling highlighting
let g:ale_set_highlights = 0
"highlight ALEWarning ctermbg=13
"highlight ALEError ctermbg=32
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'





"""""""""MiniMap"""""""""
let g:minimap_show='<leader>ms'
let g:minimap_update='<leader>mu'
let g:minimap_close='<leader>gc'
let g:minimap_toggle='<leader>gt'
let g:minimap_highlight='Visual'





""""""""vim-commentary""""""""
"为python和shell等添加注释
autocmd FileType python,shell,coffee set commentstring=#\ %s
"修改注释风格
""autocmd FileType java,c,cpp set commentstring=//\ %s



"""""""配对""""""""
" 设置括号自动补全 "
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR>}<ESC>O 
