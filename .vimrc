""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " be iMproved
"filetype off " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Vundle
Bundle 'gmarik/vundle'

" Syntax
"Bundle 'asciidoc.vim'
"Bundle 'confluencewiki.vim'
Bundle 'html5.vim'
Bundle 'JavaScript-syntax'
"Bundle 'mako.vim'
"Bundle 'moin.vim'
"Bundle 'python.vim--Vasiliev'
"Bundle 'xml.vim'
"
" Color

Bundle 'desert256.vim'
Bundle 'Impact'
Bundle 'matrix.vim'
Bundle 'vibrantink'
Bundle 'vividchalk.vim'

" Ftplugin
Bundle 'python_fold'

" Indent
"Bundle 'indent/html.vim'
Bundle 'IndentAnything'
Bundle 'Javascript-Indentation'
Bundle 'mako.vim--Torborg'
Bundle 'gg/python.vim'

" Plugin
Bundle 'The-NERD-tree'
Bundle 'AutoClose--Alves'
Bundle 'auto_mkdir'
Bundle 'cecutil'
Bundle 'FencView.vim'
"Bundle 'FuzzyFinder'
Bundle 'jsbeautify'
Bundle 'L9'
Bundle 'Mark'
Bundle 'mru.vim'
Bundle 'The-NERD-Commenter'
"Bundle 'project.vim'
Bundle 'restart.vim'
Bundle 'taglist.vim'
Bundle 'templates.vim'
"Bundle 'vimim.vim'
Bundle 'ZenCoding.vim'
"Bundle 'css_color.vim'
Bundle 'ap/vim-css-color'
"requires ruby
"Bundle 'hallettj/jslint.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'hallison/vim-markdown'

Bundle 'majutsushi/tagbar'
" original repos on github
"Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'

" non github repos
" command-t need ruby
"Bundle 'git://git.wincent.com/command-t.git'

" file type indent
"filetype plugin indent on

" set leader
"let mapleader = ","
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Bundle "vim-scripts/genutils"
Bundle "vim-scripts/lookupfile"
Bundle "jboyens/vim-protobuf"
Bundle "vim-scripts/Indent-Guides"
"Bundle 'Highlight-UnMatched-Brackets'
Bundle "altercation/vim-colors-solarized"

let g:tagbar_ctags_bin='/usr/bin/ctags'
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" taglist
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
"let Tlist_WinWidth = 40
"let Tlist_Auto_Highlight_Tag = 1
"let Tlist_Auto_Open = 1
"let Tlist_Auto_Update = 1
"let Tlist_Close_On_Select = 0
"let Tlist_Compact_Format = 0
"let Tlist_Display_Prototype = 0
"let Tlist_Display_Tag_Scope = 1
"let Tlist_Enable_Fold_Column = 0
"let Tlist_Exit_OnlyWindow = 0
"let Tlist_File_Fold_Auto_Close = 0
"let Tlist_GainFocus_On_ToggleOpen = 1
"let Tlist_Hightlight_Tag_On_BufEnter = 1
"let Tlist_Inc_Winwidth = 0
"let Tlist_Max_Submenu_Items = 1
"let Tlist_Max_Tag_Length = 30
"let Tlist_Process_File_Always = 0
"let Tlist_Show_Menu = 0
"let Tlist_Show_One_File = 0
"let Tlist_Sort_Type = "order"
"let Tlist_Use_Horiz_Window = 0
"let Tlist_Use_Right_Window = 1

""""""""""""""""""""""""""""""
" netrw setting
"""""""""""""""""""""""""""""""
let g:netrw_winsize = 30
nmap <silent> <leader>fe :Sexplore!<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" winmanager
"let g:winManagerWindowLayout='FileExplorer|TagList'
" TODO: http://www.cnblogs.com/ifys/archive/2010/10/24/1860610.html
let g:winManagerWidth = 30
let g:NERDTree_title="\[NERD\ Tree\]"
"let g:winManagerWindowLayout='NERDTree|TagList'
let g:winManagerWindowLayout='NERDTree|TagbarToggle'
let g:persistentBehaviour = 0

function! NERDTree_Start()
    exec 'NERDTree'
    "exe '1wincmd w'
    "exe 'q'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

"nmap wt :if !exists("g:defaultExplorer") <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif<CR>
nmap wm :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>
nmap <F3> :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR><CR>
"nmap wm :WMToggle<CR> 
"nmap <F3> :WMToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" minibufexplore
" don't show minibufexplorer because of conflict with winmanager
let g:miniBufExplorerMoreThanOne=1000000
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplModSelTarget = 1 
map <leader>c :CMiniBufExplorer<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" A
nnoremap <silent> <F12> :A<CR>
let g:alternateExtensions_C = "H"
let g:alternateExtensions_H = "C"

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" za 
set foldmethod=syntax
set foldlevel=100

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" for powerline
" set nocompatible
set laststatus=2
set encoding=utf-8
set termencoding=utf-8
let g:tagbar_iconchars = ['▷', '◢']
"let g:tagbar_iconchars = ['+', '-']
let g:Powerline_symbols_override = {
        \ 'BRANCH': [0x2213],
        \ 'LINE': 'L',
        \ }

let g:Powerline_symbols = 'fancy'
"let g:Powerline_cache_enabled = 0
"let g:Powerline_theme = 'skwp'
set guifont=Monaco\ for\ Powerline:h12

"""""""""""""""""""""""""""""
" enable 256 colors
" FROM: http://vim.wikia.com/wiki/256_colors_in_vim
"""""""""""""""""""""""""""""
set t_Co=256
"set t_AB=^[[48;5;%dm
"set t_AF=^[[38;5;%dm
"
""""""""""""""""""""""""""""""
" lookupfile setting
""""""""""""""""""""""""""""""
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
if filereadable("./filenametags")                "设置tag文件的名字
let g:LookupFile_TagExpr = '"./filenametags"'
endif
"映射LookupFile为,lk
nmap <silent> <leader>lk :LUTags<cr>
"映射LUBufs为,ll
nmap <silent> <leader>ll :LUBufs<cr>
"映射LUWalk为,lw
nmap <silent> <leader>lw :LUWalk<cr>


""""""""""""""""""""""""""""""""""""
" IndentGuilde
" :set cuc " hight light current column
""""""""""""""""""""""""""""""""""""
let g:indent_guides_guide_size=1

""""""""""""""""""""""""""""""""""""
" VIM7.3+ support this feature
""""""""""""""""""""""""""""""""""""
"set cc=80
"

""""""""""""""""""""""""""""""""""""
" cololrscheme
""""""""""""""""""""""""""""""""""""
"syntax enable
"set background=dark
"colorscheme solarized
