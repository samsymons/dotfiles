alias l='ls -lhoAF'
alias reload='. ~/.zshrc'
alias reload!='rcup -d .dotfiles -v; . ~/.zshrc'

alias tmux="TERM=screen-256color-bce tmux"
alias mkdir='mkdir -p'
alias ...='../..'

# Git
alias gs="git status -s -b"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(blue)<%an>%Creset' --abbrev-commit"
alias gm="git branch --merged | grep -v '\*'"
alias gpr="git pull-request -b develop"

# Rails
alias be="bundle exec"
alias m="migrate"
alias migrate="rake db:migrate db:rollback && rake db:migrate"
alias rk="rake"
alias s="rspec"
