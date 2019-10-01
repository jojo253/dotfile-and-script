source ~/basic.vim
"==============================
" 插件管理器: vim-plug
" 安装插件 :PlugInstall
call plug#begin('~/.vim/plugged')
"==============================
" 视觉

" 开始界面
Plug 'mhinz/vim-startify'
" icon
Plug 'ryanoasis/vim-devicons'
" 界面配色主题
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'
" 界面美化
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" tmuxline
Plug 'edkolev/tmuxline.vim'
" 缩进线
Plug 'Yggdroot/indentLine'
" 彩虹括号
Plug 'kien/rainbow_parentheses.vim'
" 单词下划线
Plug 'itchyny/vim-cursorword'
" 关键词高亮 <leader>k
Plug 'lfv89/vim-interestingwords'
" markdown实时预览
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
"==============================
" 文件

Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'

"==============================
" 操作

" 代码补全
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'zedr/zope-snipmate-bundle'
" 成对操作 " ys cs ds
Plug 'tpope/vim-surround'
" 注释
Plug 'scrooloose/nerdcommenter'
" 语法检查
Plug 'vim-syntastic/syntastic'
" 格式化
Plug 'Chiel92/vim-autoformat'
" Python自动补全
Plug 'davidhalter/jedi-vim'
Plug 'Shougo/neocomplete.vim'
" 快速跳转 <leader><leader>w
Plug 'easymotion/vim-easymotion'

"==============================
" 文本格式

" 前端
Plug 'mattn/emmet-vim'
" mathjax
Plug 'drmingdrmer/vim-syntax-markdown'

call plug#end()
"==============================
" Startify
nnoremap st :Startify<CR>
"==============================
" nerdtree
nnoremap ,n :NERDTreeMirror<CR>
nnoremap ,n :NERDTreeToggle<CR>
"==============================
" nerd_commenter

let g:NERDSpaceDelims = 1

"==============================
" nerd_tree
" autocmd vimenter * NERDTree  "自动开启Nerdtree
" let g:NERDTreeWinSize = 25 "设定 NERDTree 视窗大小
" let NERDTreeShowBookmarks=1  " 开启Nerdtree时自动显示Bookmarks
" 打开vim时如果没有文件自动打开NERDTree
" autocmd vimenter * if !argc()|NERDTree|endif
" 当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 设置树的显示图标
" let g:NERDTreeShowLineNumbers=1  " 是否显示行号
let g:NERDTreeHidden=1     "不显示隐藏文件
" Making it prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

"==============================
" instant_markdown
let g:instant_markdown_autostart=0

let g:pydiction_location='~/.vim/plugged/pydiction/complete-dict'

"==============================
" 设置主题
set background=dark
let g:gruvbox_contrast_dark='soft'
colorscheme gruvbox
" 背景透明
hi Normal guibg=NONE ctermbg=NONE

"==============================
" vim-airline

" 显示tabline
let g:airline#extensions#tabline#enabled = 1

"==============================
" Rainbow Parentheses

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
"==============================
" indent line
let g:indentLine_setColors = 0
let g:indentLine_concealcursor = ''
"==============================
" easymotion
nmap ss <Plug(easymotion-s2)

"==============================
" snippet
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

