export DISABLE_AUTO_TITLE='true'

source ~/antigen.zsh

# 加载oh-my-zsh库
antigen use oh-my-zsh

# 加载原版oh-my-zsh中的功能(robbyrussell's oh-my-zsh).
antigen bundle brew
antigen bundle docker
antigen bundle docker-compose
antigen bundle gem
antigen bundle golang
antigen bundle ng
antigen bundle osx
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# z
antigen bundle rupa/z z.sh

# 语法高亮功能
# antigen bundle zdharma/fast-syntax-highlighting
antigen bundle zsh-users/zsh-syntax-highlighting

# 代码提示功能
antigen bundle zsh-users/zsh-autosuggestions

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=10'

# 自动补全功能
antigen bundle zsh-users/zsh-completions

# 加载主题
# antigen theme robbyrussell
antigen theme romkatv/powerlevel10k
# 保存更改
antigen apply

# ZSH_THEME=powerlevel10k/powerlevel10k

__conda_setup="$('/home/moyuge/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/moyuge/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/moyuge/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/moyuge/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="$PATH:/opt/mssql-tools/bin"

export PATH="$PATH:/home/moyuge/android-studio-ide-183.5692245-linux/android-studio/bin"
prompt_context() {}

export TERM=xterm-256color

#=================================================
#alias
alias .vimrc="vim ~/.vimrc"
alias .zshrc="vim ~/.zshrc"
alias tj.md="vim ~/moyugeblog/source/_posts/tj.md"
alias v='vim'

alias fanyi='trans :zh'

alias tcbk='tldr'

alias tls='tmux ls'
alias tnew='tmux new -s'
alias tks='tmux kill-server'

#=================================================
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh