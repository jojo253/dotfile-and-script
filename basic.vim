" 显示行号
set number

" 不创建交换文件
set noswapfile

" 设置leader键
let mapleader = ","

" 搜索高亮
set hls is

" 查找忽略大小写
" set ignorecase

" 显示未完成的命令
set showcmd

" 默认十进制
set nrformats=

" 折叠方法
set foldmethod=indent
set foldopen=all
" set foldclose=all

" 检查拼写
" set spell

" 鼠标可以在任何地方使用
set mouse=a

" 将无名寄存器和系统剪切板关联
set clipboard=unnamed

" markdown显示当前行所有内容
set cursorline

" 编码
set encoding=UTF-8
"==============================
" maps for origin vim
" noremap指非递归映射

" 切换buffer
nnoremap [b :bprevious<CR>
nnoremap [n :bnext<CR>
" 切换窗口
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" 保存
nnoremap ,w :w<CR>
cnoremap w!! w !sudo tee % >/dev/null

" 补全
inoremap <C-f> <C-x><C-f>
inoremap xx <C-x><C-o>

" map for esc
inoremap jj <Esc>

" 正则替换快捷键，使用:作为分隔符
noremap ;; :%s:::g<Left><Left><Left>
noremap ;' :%s:::cg<Left><Left><Left><Left>
"==============================
" press <F5> to run code
map <F5> :call RunCode()<CR>
func! RunCode()
 	: let filename=split(expand('%:p'),"/")[-1]
	exec "w"
	echo filename
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
" Call figlet
map tx :r !figlet 
