"----------------
"代码转换
"----------------
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1 
set fenc=utf8
set fencs=utf8,gbk,gb2312,gb18030
language message zh_CN.UTF-8
set helplang=cn

"----------------
"系统判断
"----------------
let g:iswindows = 0
let g:islinux = 0
if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:iswindows = 1
else
    let g:islinux = 1
endif
if has("gui_running")
    let g:isGUI = 1
else
    let g:isGUI = 0
endif
if (g:iswindows && g:isGUI)
    " 共享剪切板
    set clipboard+=unnamed
    au GUIEnter * simalt ~x " 窗口启动时自动最大化
    " set guioptions-=m " 隐藏菜单栏
    set guioptions-=T " 隐藏工具栏
    set guioptions-=L " 隐藏左侧滚动条
    set guioptions-=r " 隐藏右侧滚动条
    set guioptions-=b " 隐藏底部滚动条
    set guifont=Consolas:h12:cANSI
endif

"---------------
" 插件管理 vim-plug
"--------------
call plug#begin('G:/vimPlug')
" 主题插件
Plug 'morhetz/gruvbox'
" 树形目录
Plug 'preservim/nerdtree'
" 状态栏
Plug 'vim-airline/vim-airline'    
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
" 搜索插件
Plug 'ctrlpvim/ctrlp.vim'
" 注释插件
Plug 'preservim/nerdcommenter'
" 缩进提示
Plug 'Yggdroot/indentLine'
call plug#end()
"--------------
" 配置设置
"--------------
"检测文件类型
filetype on
"针对不同的文件采用不同的缩进方式
filetype indent on
"允许插件
filetype plugin on
"启动智能补全
filetype plugin indent on
" 搜索插件设置
let g:ctrlp_map = '<leader>p'
let g:ctrlp_cmd = 'CtrlP'
map <leader>f :CtrlPMRU<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
"默认在注释分隔符后添加空格
let g:NERDSpaceDelims=1
"对美化的多行注释使用紧凑语法
let g:NERDCompactSexyComs=1
"显示行号
set nu!
"开启状态栏
set laststatus=2
"Tree开关快捷键
map <F2> :NERDTreeToggle<CR>
"TAB替换为四个空格
set ts=2
set expandtab
"配置立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
"命令自动补全
set wildmenu
"色彩方案
syntax enable
set background=dark
colorscheme gruvbox 
set cursorline
" 缩进提示
let g:indent_guides_enable_on_vim_startup=1
let g:indentLine_enabled=1
let g:indentLine_char='|'
