"代码转换
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1 
set fenc=utf8
set fencs=utf8,gbk,gb2312,gb18030
language message zh_CN.UTF-8
set helplang=cn
"----------------
"# vundle 插件管理器
"----------------
set nocompatible
filetype off
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
    set rtp+=$VIM/vimfiles/bundle/Vundle.vim/
    call vundle#begin('$VIM/vimfiles/bundle/')
    au GUIEnter * simalt ~x " 窗口启动时自动最大化
    set guioptions-=m " 隐藏菜单栏
    set guioptions-=T " 隐藏工具栏
    set guioptions-=L " 隐藏左侧滚动条
    set guioptions-=r " 隐藏右侧滚动条
    set guioptions-=b " 隐藏底部滚动条
    set guifont=Consolas:h12:cANSI
else
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
endif
"----------------
"插件列表
"----------------
Plugin 'VundleVim/Vundle.vim' "插件管理器
Plugin 'mattn/emmet-vim' "Zend coding
Plugin 'altercation/vim-colors-solarized' "配色
Plugin 'Shougo/vimfiler.vim' "树形目录
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline' "airlin状态栏
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim' "ctrl+p 搜索
Plugin 'hail2u/vim-css3-syntax' "CSS语法
Plugin 'Raimondi/delimitMate' "括号匹配
Plugin 'pangloss/vim-javascript' "JavaScript 语法高亮
Plugin 'ternjs/tern_for_vim' " JavaScript 提示
" Plugin 'nathanaelkane/vim-indent-guides' "缩进范围
Plugin 'Yggdroot/indentLine'
Plugin 'tpope/vim-surround' "成对修改字符
Plugin 'scrooloose/nerdcommenter' "添加注释
Plugin 'Shougo/unite.vim' "win下nerdtree好像依赖
"Plugin 'Valloric/YouCompleteMe' " YCM 配置
Plugin 'terryma/vim-multiple-cursors' " 多选
"----------------
call vundle#end()
" ---------------
" 配置
" ---------------
"色彩方案
syntax enable
set background=light 
colorscheme solarized
set cursorline
" <Leader> 键
let mapleader = ";"
"根据不同类型加载插件
filetype plugin indent on
"配置立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
"命令自动补全
set wildmenu
"关闭兼容模式
set nocompatible
"显示行号
set nu!
"开启状态栏
set laststatus=2
"Tree开关快捷键
map <F2> :NERDTreeToggle<CR>
"TAB替换为四个空格
set ts=2
set expandtab
"js中html css识别
let javascript_enable_domhtmlcss = 1
"airline主题
let g:airline_theme = 'powerlineish'
"注释自动添加空格
let g:NERDSpaceDelims=1
" 开启缩进提示  
let g:indent_guides_enable_on_vim_startup = 1
" YCM 插件加载
" set runtimepath+=G:\Program\ Files\Vim\vimfiles\bundle\YouCompleteMe
" " let g:ycm_filetype_blacklist = {
      " " \ 'tagbar' : 1,
      " " \ 'qf' : 1,
      " " \ 'notes' : 1,
      " " \ 'markdown' : 1,
      " " \ 'unite' : 1,
      " " \ 'text' : 1,
      " " \ 'vimwiki' : 1,
      " " \ 'gitcommit' : 1,
      " " \}
" let g:multi_cursor_use_default_mapping=0
" " Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
" 缩进提示
let g:indentLine_enabled = 1
let g:indentLine_char = '|'
