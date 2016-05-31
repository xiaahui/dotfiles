" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2011 Apr 15
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc
"------------------------------------------------------------------------------
"" VUNDLE CONFIGURATIONS
"------------------------------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
"----------------------------------------------------------------------------
"" Add the Plugin as follows
"----------------------------------------------------------------------------
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'SirVer/ultisnips'
Plugin 'derekwyatt/vim-protodef'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'dyng/ctrlsf.vim'
Plugin 'honza/vim-snippets'
Plugin 'rizzatti/dash.vim'
Plugin 'gcmt/wildfire.vim'
"Plugin 'fholgado/minibufexpl.vim'

"Plugin 'Rip-Rip/clang_complete'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
let mapleader=";"
"------------------------------------------------------------------------------
""BUFFER CONFIGURATIONS
"------------------------------------------------------------------------------
"
"------------------------------------------------------------------------------
""WILDFIRE CONFIGURATIONS
"------------------------------------------------------------------------------
" 快捷键
map <SPACE> <Plug>(wildfire-fuel)
vmap <S-SPACE> <Plug>(wildfire-water)
" 适用于哪些结对符
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "i>", "ip"]
"------------------------------------------------------------------------------
""Make and compile CONFIGURATIONS
"------------------------------------------------------------------------------
"nmap <Leader>m :wa<CR>:make<CR><CR>:cw<CR>
"nmap <Leader>m :wa<CR>:make<CR>:cw<CR>
nmap <Leader>m :!rm -rf main<CR>:wa<CR>:make<CR><CR>:cw<CR>
"------------------------------------------------------------------------------
""NERDtree CONFIGURATIONS
"------------------------------------------------------------------------------
" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
"------------------------------------------------------------------------------
""DASH CONFIGURATIONS
"------------------------------------------------------------------------------
:nmap <silent> <Leader>d <Plug>DashSearch
"------------------------------------------------------------------------------
""YCM CONFIGURATIONS
"------------------------------------------------------------------------------
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
" YCM 补全菜单配色
" 菜单
highlight Pmenu ctermfg=2 ctermbg=3 guifg=#005f87 guibg=#EEE8D5
" 选中项
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 引入 C++ 标准库tags
set tags+=/data/misc/software/misc./vim/stdcpp.tags
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>; <C-x><C-o>
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全         
let g:ycm_seed_identifiers_with_syntax=1
"------------------------------------------------------------------------------
""PROTODEF CONFIGURATIONS
"------------------------------------------------------------------------------
let g:disable_protodef_sorting=1
let g:protodefprotogetter='~/.vim/bundle/vim-protodef/pullproto.pl'
let g:disable_protodef_sorting=1
"------------------------------------------------------------------------------
""Snippet CONFIGURATIONS
"------------------------------------------------------------------------------
"let g:UltiSnipsSnippetDirectories=["mysnippets"]
" UltiSnips 的 tab 键与 YCM 冲突，重新设定
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"
"------------------------------------------------------------------------------
""SEARCH AND FIND CONFIGURATIONS
"------------------------------------------------------------------------------
"ctrlsf configuration
"hint: Search in Project
noremap <Leader>sp :CtrlSF<CR>
"------------------------------------------------------------------------------
""AIRLINE CONFIGURATIONS
"------------------------------------------------------------------------------
"let g:airline_theme="luna"
let g:airline_theme="papercolor"
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_nr_show =1
"hot key to switch the buffer
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>
"nnoremap <C-tab> :bn<CR>
"nnoremap <C-s-tab> :bp<CR>
let g:airline#extensions#whitespace#enabled=0
let g:airline#extensions#whitespace#symbol = '!'
set guifont=Meslo\ LG\ L\ DZ\ Regular\ for\ Powerline
"------------------------------------------------------------------------------
""TAGBAR CONFIGURATIONS
"------------------------------------------------------------------------------
let tagbar_left = 1
"identifier list by tag
nmap <F8> :TagbarToggle<CR>
let tagbar_width = 32
let g:tagbar_compact = 1
let g:tagbar_type_cpp = {
    \ 'kinds' : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:0', 
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }
"------------------------------------------------------------------------------
""CODE COLLAPSE CONFIGURATIONS
"------------------------------------------------------------------------------
" code collapse about indent or syntax
"set foldmethod=indent
set foldmethod=syntax
" load vim and close the collapsed code
set nofoldenable
"------------------------------------------------------------------------------
""LEADER KEY CONFIGURATIONS
"------------------------------------------------------------------------------
"copy from vim to system
vnoremap <Leader>y "+y
"paste from system to vim
nmap <Leader>p "+p
"save the window
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
"next window
nnoremap nw <C-W><C-W>
"left,right,upper,down  window
nnoremap <Leader>lw <C-W>l
nnoremap <Leader>rw <C-W>h
nnoremap <Leader>uw <C-W>k
nnoremap <Leader>dw <C-W>j
"------------------------------------------------------------------------------
""GENERAL CONFIGURATIONS
"------------------------------------------------------------------------------
autocmd BufWritePost $MYVIMRC source $MYVIMRC
syntax enable
syntax on
set background=dark
colorscheme solarized
" always show statusline
set laststatus=2
" show the position of the cursor
set ruler
" show the number of line
set number
" show the current row and column
set cursorline
set cursorcolumn
" highlighten the search result
set hlsearch
" no row wrap
set nowrap
" real time search
set incsearch
" ignorce case when search
set ignorecase
" shut down the compatible mode
set nocompatible
" the hint of the command line in vim
set wildmenu
" open the filetype detect
filetype on
" load plugin according the file type
filetype plugin on
" tab and space setting
filetype indent on
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
"------------------------------------------------------------------------------
""FSWITCH CONFIGURATIONS
"------------------------------------------------------------------------------
nmap <silent> <Leader>sw :FSHere<cr>
