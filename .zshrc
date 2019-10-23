export DISABLE_AUTO_TITLE='true'

source ~/antigen/antigen.zsh

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

prompt_context() {}

export TERM=xterm-256color

export LANG=en_US.UTF-8
#=================================================
#alias
alias .vimrc="vim ~/.vimrc"
alias .zshrc="vim ~/.zshrc"
alias v='vim'
alias va='vim * -O'

alias ra='ranger'

alias fanyi='trans :zh'

alias tcbk='tldr'

alias tls='tmux ls'
alias tnew='tmux new -s'
alias tks='tmux kill-server'

alias sai='sudo apt install'

alias gnome-control-center='env XDG_CURRENT_DESKTOP=GNOME gnome-control-center'
#=================================================
#nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/dist
#================================================
#path
export PATH="$PATH:/usr/local/stata15/"
export PATH="$PATH:/usr/local/Zotero_linux-x86_64/"

#=================================================
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
