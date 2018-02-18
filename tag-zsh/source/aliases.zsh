alias l='ls -lhoAF'
alias reload='. ~/.zshrc'
alias reload!='rcup -d .dotfiles -v; . ~/.zshrc'

alias tmux="TERM=screen-256color-bce tmux"
alias mkdir='mkdir -p'
alias vf='vim $(fzf)'

alias gs="git status"
alias gd="git diff --cached"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(blue)<%an>%Creset' --abbrev-commit"

alias be="bundle exec"
