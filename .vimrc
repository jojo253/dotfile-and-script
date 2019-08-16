" 显示行号
set number

" 不创建交换文件
set noswapfile

" 设置leader键
" let mapleader = ","

" 搜索高亮
set hls is

" 显示未完成的命令
set showcmd

" 默认十进制
set nrformats=

" 折叠方法
set foldmethod=indent
set foldopen=all
" set foldclose=all

" Space折叠
nnoremap <space> za

" 检查拼写
" set spell

" 鼠标可以在任何地方使用
set mouse=a

"==============================
" 插件管理器: vim-plug
" 安装插件 :PlugInstall
call plug#begin('~/.vim/plugged')
" 开始界面
Plug 'mhinz/vim-startify'
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
" markdown实时预览
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
" tab补全
Plug 'ervandew/supertab'
" 代码补全
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'zedr/zope-snipmate-bundle'
" 彩虹括号
Plug 'kien/rainbow_parentheses.vim'
" 对称括号
" Plug 'jiangmiao/auto-pairs'
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
" Python相关
" Plug 'python-mode/python-mode'
" Python智能补全
" Plug 'rkulla/pydiction'
" tag list
Plug 'vim-scripts/taglist.vim'
" 撤销记录
Plug 'mbbill/undotree'
" 文件树
Plug 'scrooloose/nerdtree'
" 单词下划线
Plug 'itchyny/vim-cursorword'
" 关键词高亮 <leader>k
Plug 'lfv89/vim-interestingwords'
" 前端
Plug 'mattn/emmet-vim'
" 快速跳转 <leader><leader>w
Plug 'easymotion/vim-easymotion'
call plug#end()

"==============================
" maps

nnoremap ,w :w<CR>

" taglist
nnoremap ,t :Tlist<CR>
" undotree
nnoremap ,u :UndotreeToggle<CR>
" nerdtree
nnoremap ,n :NERDTreeMirror<CR>
nnoremap ,n :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

map ,c \ci
" map for esc
imap jj <Esc>
" imap <C-[> <Esc>

" 正则替换快捷键，使用:作为分隔符
noremap ;; :%s:::g<Left><Left><Left>
noremap ;' :%s:::cg<Left><Left><Left><Left>
"==============================

map <F5> :call RunCode()<CR>
func! RunCode()
	: let filename=split(expand('%:p'),"/")[-1]
	exec "w"
	echo filename
	" if filename == ".vimrc"
		" exec "source ~/.vimrc"
	if filename == ".zshrc"
		exec "! source ~/.zshrc"
	elseif filename == ".tmux.conf"
		exec "!tmux source ~/.tmux.conf"
	elseif &filetype == "c" || &filetype == "cpp" || &filetype == "haskell"
		exec "! %<.exe"
	elseif &filetype == 'python'
		exec "!time python3 %"
	elseif &filetype == 'html'
		exec "!google-chrome %"
	elseif &filetype == 'sh' || &filetype == 'zsh'
		exec "!./%"
	endif
endfunc

"==============================
" nerd_commenter

let g:NERDSpaceDelims = 1
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
