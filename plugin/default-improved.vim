" ============================================================================
" Description: Vim defaults.vim improved
" Author: StarryLeo <suxggg@gmail.com>
" URL: https://github.com/StarryLeo/vim-default-improved
" License: MIT
" ============================================================================

if &compatible || exists('g:loaded_default_improved')
  finish
endif
let g:loaded_default_improved = 1

  set nocompatible

  " Set default encoding to utf-8
  set encoding=utf-8
  set termencoding=utf-8
  set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
  setglobal fileencoding=utf-8

  scriptencoding utf-8

  filetype plugin indent on       " Automatically detect file types 检测到不同的文件类型加载不同的文件类型插件
  syntax enable                   " Syntax highlighting 开启语法高亮

  set fileformats=unix,dos,mac    " Use Unix as standard file type 使用 Unix 文件格式作为标准

  if has('clipboard')             " 设置剪贴板
    if has('unnamedplus')         " When possible use + register for copy-paste
      set clipboard=unnamed,unnamedplus
    else                          " On mac and Windows, use * register for copy-paste
      set clipboard=unnamed
    endif
  endif

  set mouse=a                     " Automatically enable mouse usage 开启鼠标模式
  set mousehide                   " Hide the mouse cursor while typing 输入时隐藏鼠标
  set shortmess-=S                " Show search match index 显示当前匹配在搜索结果中的位置
  set shortmess+=cfilmnxoOtT      " Abbrev. of messages (avoids 'hit enter') 设置短消息
  set virtualedit=onemore         " Allow for cursor beyond last character 允许光标移动到刚刚超过行尾的位置
  set history=1000                " Store a ton of history (default is 50) 记录的历史命令数
  set spell                       " Spell checking on 开启拼写检查
  set spelllang+=cjk              " Check cjk spelling 检查 cjk 字符拼写
  set hidden                      " Allow buffer switching without saving 允许切换缓冲区不保存
  set synmaxcol=500               " Lowering this improves performance in files with long lines 限制长行高亮以改善性能
  set ttyfast                     " Indicates a fast terminal connection, send more characters when redrawing 表明使用快速终端连接，屏幕重绘时可以发送更多字符
  set lazyredraw                  " Improve performance under some conditions 一些情况下可以改善性能
  set timeout timeoutlen=1000     " Set the time in milliseconds that is waited for 设置映射超时为 1000ms
  set ttimeout ttimeoutlen=100    " A key code or mapped key sequence to complete 设置键码超时为 100ms

  set tabpagemax=25      " Only show 25 tabs 最多只打开 25 个标签页
  set showmode           " Display the current mode 显示当前模式

  "set cursorline         " Highlight current line 高亮当前行
  set colorcolumn=+1     " Highlight column after 'textwidth' 高亮 'textwidth' 后一列

  set ruler              " Show the ruler 显示标尺
  set showcmd            " Show partial commands in status line and 显示（部分）命令
  set laststatus=2       " Show the statusline 显示状态栏
  set display+=lastline  " Show as much as possible of the lastline 尽可能多显示最后一行

  set number                      " Line numbers on 显示行号
  set signcolumn=yes              " Always show sign column 显示标号列
  set showmatch                   " Show matching brackets/parenthesis 显示匹配的括号
  set incsearch                   " Find as you type search 实时显示搜索匹配位置
  set hlsearch                    " Highlight search terms 高亮搜索词
  set winminheight=0              " Windows can be 0 line high 设置窗口高度可以为 0 行高
  set ignorecase                  " Case insensitive search 搜索忽略大小写
  set smartcase                   " Case sensitive when uc present 当搜索模式包含大写字符时，区分大小写
  set wildmenu                    " Show list instead of just completing 显示命令行补全列表
  set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.  <Tab> 补全
  set whichwrap=b,s,h,l,<,>       " Backspace and cursor keys wrap too 可行间回绕的键
  set scrolljump=5                " Lines to scroll when cursor leaves screen 光标离开屏幕滚动的最小行数
  set scrolloff=3                 " Minimum lines to keep above and below cursor 光标上下两侧最小保留行数
  set sidescrolloff=5             " Minimum columns to keep left and right cursor 光标左右两侧最小保留列数
  set foldenable                  " Auto fold code  zi 快速切换自动折叠代码
  set foldlevelstart=99           " Open all folds at start 启动时打开所有折叠
  set foldmethod=marker
  set foldmarker={,}
  set list
  "set listchars=tab:→\ ,eol:↵,trail:·,extends:↷,precedes:↶ " Highlight problematic whitespace 突显特殊的空白
  set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
  set fillchars=stl:\ ,stlnc:\ ,fold:\ ,vert:│

  set nowrap              " Do not wrap long lines 长行不折行
  set autoindent          " Indent at the same level of the previous line 自动对齐缩进
  set shiftwidth=4        " Use indents of 4 spaces 缩进使用 4 个空格
  set expandtab           " Tabs are spaces, not tabs 制表符（Tab 键）扩展为空格
  set tabstop=4           " An indentation every four columns 制表符所占空格数
  set softtabstop=4       " Let backspace delete indent 软制表符宽度
  set linespace=0         " No extra spaces between rows 行间没有多余空格
  set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J) 防止标点后接两个空格
  set splitright          " Puts new vsplit windows to the right of the current 水平向右新建窗口
  set splitbelow          " Puts new split windows to the bottom of the current 垂直向下新建窗口
  set nrformats-=octal    " Numbers that start with 00 will be considered to be decimal than octal  00x 增减数字时使用十进制
  set formatoptions+=jMm  " Delete comment character when joining comment lines, auto-wrap work with cjk 连接多行注释时删除多余注释符号，自动断行对 cjk 字符生效
  set backspace=indent,eol,start  " Backspace for dummies 设置退格键

" Key (re)Mappings {
  if get(g:, 'vim_default_improved_key_mapping', 1)
    " Basic {
    if get(g:, 'vim_default_improved_basic_key_mapping', 1)
      " Yank from the cursor to the end of the line, to be consistent with C and D.
      " 映射 Y 从当前光标位置复制到行尾，从而表现和 C D 一致
      nnoremap Y y$

      " Visual shifting (does not exit Visual mode)
      " 可视化模式下可连续左右移动选中的文本，单次移动距离为 shiftwidth 设置的宽度
      vnoremap < <gv
      vnoremap > >gv

      " Allow using the repeat operator with a visual selection (!)
      " 在可视化模式允许使用重复动作
      " http://stackoverflow.com/a/8064607/127816
      vnoremap . :normal .<CR>

      " Easier redo
      " 更简单的重做
      nnoremap U <C-r>

      " Go to home and end using capitalized directions
      " 使用大写字母 H L 移动到行开头和行结尾
      noremap H ^
      noremap L $

      imap <c-backspace> <c-w>

      " Toggle search highlighting
      " 搜索结果高亮切换
      nmap <silent> <Leader>/ :set invhlsearch<CR>
    endif
    " }

    " Fold {
    " Code folding options
    " 代码折叠级别选项
    if get(g:, 'vim_default_improved_fold_key_mapping', 1)
      nmap <Leader>z0 :set foldlevel=0<CR>
      nmap <Leader>z1 :set foldlevel=1<CR>
      nmap <Leader>z2 :set foldlevel=2<CR>
      nmap <Leader>z3 :set foldlevel=3<CR>
      nmap <Leader>z4 :set foldlevel=4<CR>
      nmap <Leader>z5 :set foldlevel=5<CR>
      nmap <Leader>z6 :set foldlevel=6<CR>
      nmap <Leader>z7 :set foldlevel=7<CR>
      nmap <Leader>z8 :set foldlevel=8<CR>
      nmap <Leader>z9 :set foldlevel=9<CR>
    endif
    " }

    " Cmdline shortcuts {
    if get(g:, 'vim_default_improved_cmdline_key_mapping', 1)
      " Bash like
      cnoremap <C-a> <Home>
      cnoremap <C-e> <End>
      cnoremap <C-d> <Delete>
      " May need to type quickly to expand. See :h map-typing
      " Change Working Directory to that of the current file
      " 快捷键切换当前文件目录为工作目录
      cmap cwd lcd %:p:h
      cmap cd. lcd %:p:h

      " For when you forget to sudo.. Really Write the file.
      " 编辑只读文件忘记用 sudo，使用 :w!! 保存
      command! W w !sudo tee % > /dev/null
    endif
    " }


    " [ / ] {
    if get(g:, 'vim_default_improved_bracket_key_mapping', 1)
      " Next and Previous
      " 下一个 前一个
      nnoremap <silent> [a :previous<CR>
      nnoremap <silent> ]a :next<CR>
      nnoremap <silent> [A :first<CR>
      nnoremap <silent> ]A :last<CR>
      nnoremap <silent> [b :bprevious<CR>
      nnoremap <silent> ]b :bnext<CR>
      nnoremap <silent> [B :bfirst<CR>
      nnoremap <silent> ]B :blast<CR>
      nnoremap <silent> [t :tabprevious<CR>
      nnoremap <silent> ]t :tabnext<CR>
      nnoremap <silent> [T :tabfirst<CR>
      nnoremap <silent> ]T :tablast<CR>
    endif
    " }

    " Window {
    if get(g:, 'vim_default_improved_window_key_mapping', 1)
      map <C-j> <C-w>j
      map <C-k> <C-w>k
      map <C-h> <C-w>h
      map <C-l> <C-w>l
    endif
    " }

  endif
" }

" GUI Settings {
  if has('gui_running')
    set guioptions-=L         " Remove the left-hand scrollbar
    set guioptions-=m         " Remove the menu bar
    set guioptions-=t         " Remove the tearoff menu items
    set guioptions-=T         " Remove the toolbar
    set lines=41              " 41 lines of text instead of 24
    set columns=82            " 82 columns of text instead of 80
    set noerrorbells          " No annoying sound on errors
    set novisualbell
    set visualbell t_vb=
endif
" }

" Backup Settings {
  if get(g:, 'vim_default_improved_backup_on', 1)
    set backup                " Backups are nice ... 设置备份
    if has('persistent_undo')
      set undofile            " So is persistent undo ... 保存撤销历史到撤销文件
      set undolevels=1000     " Maximum number of changes that can be undone 可以撤销的最大改变次数
      set undoreload=10000    " Maximum number lines to save for undo on a buffer reload 重载缓冲区时为了可撤销，保存缓冲区的最大行数
    endif

    function! s:InitializeDirectories()
      let parent = $HOME . '/.vim'
      let prefix = 'vim'
      let dir_list = {
        \ 'backup': 'backupdir',
        \ 'views' : 'viewdir',
        \ 'swap'  : 'directory',
        \ }

      if has('persistent_undo')
        let dir_list['undo'] = 'undodir'
      endif

      let common_dir = get(g:,'vim_default_improved_consolidated_directory', parent) . '/.' . prefix

      for [dirname, settingname] in items(dir_list)
        let directory = common_dir . dirname . '/'
        if exists('*mkdir')
          if !isdirectory(directory)
            call mkdir(directory, 'p', 0700)
          endif
        endif
        if !isdirectory(directory)
          echom 'Warning: Unable to create backup directory: ' . directory
          echom 'Try: mkdir -p ' . directory
        else
          let directory = substitute(directory, ' ', "\\\\ ", 'g')
          execute 'set ' . settingname . '=' . directory
        endif
      endfor
    endfunction
    call s:InitializeDirectories()
  else
    set nobackup
    set noswapfile
    set nowritebackup
  endif
" }

" vim: sw=2
