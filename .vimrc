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
" markdown toc
Plug 'ajorgensen/vim-markdown-toc'

Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'
Plug 'majutsushi/tagbar'
Plug 'jszakmeister/markdown2ctags'
"==============================
" 写作

" 字数统计
Plug 'ChesleyTan/wordCount.vim'
" 语法
Plug 'rhysd/vim-grammarous'
"==============================
" 文件

Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'

"==============================
" 操作

" 代码补全
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
" Plug 'zedr/zope-snipmate-bundle'
Plug 'zxqfl/tabnine-vim'
" 成对操作 " ys cs ds
Plug 'tpope/vim-surround'
" 注释
Plug 'scrooloose/nerdcommenter'
" 语法检查
Plug 'vim-syntastic/syntastic'
" 格式化
Plug 'Chiel92/vim-autoformat'
" 快速跳转 <leader><leader>w
Plug 'easymotion/vim-easymotion'

" 画图
Plug 'vim-scripts/DrawIt'

" 困难模式
" Plug 'takac/vim-hardtime'
"==============================
" 文本格式

" 前端
Plug 'mattn/emmet-vim'
" mathjax
Plug 'drmingdrmer/vim-syntax-markdown'

"==============================
" 依赖
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'vim-scripts/fcitx.vim'

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
" nerd_commenter
let g:autoformat_verbosemode=1
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
let g:instant_markdown_autostart=1
let g:instant_markdown_mathjax = 1

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
nmap ss <Plug>(easymotion-s2)

"==============================
" snippet
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

"==============================
" wordCount
set statusline+=%{wordCount#WordCount()}

"==============================
" markdown2ctags
nmap <F8> :TagbarToggle<CR>
" Add support for markdown files in tagbar.
let g:tagbar_type_markdown = {
    \ 'ctagstype': 'markdown',
    \ 'ctagsbin' : '/home/moyuge/.vim/plugged/markdown2ctags/markdown2ctags.py',
    \ 'ctagsargs' : '-f - --sort=yes --sro=»',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '»',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\ }

"==============================
let g:hardtime_default_on = 1

"==============================
"coc
" inoremap <silent><expr> <c-j>
	" \ pumvisible() ? "\<C-n>" :
	" \ <SID>check_back_space() ? "\<c-j>" :
	" \ coc#refresh()
" inoremap <expr> <c-k> pumvisible() ? "\<C-p>" : "\<C-h>"
